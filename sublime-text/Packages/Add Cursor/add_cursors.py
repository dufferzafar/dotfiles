"""
Improved multiple cursor support.

Allows you to add cursors at arbitrary positions.

Taken from: https://gist.github.com/skuroda/5201642

Sample Keymap:

{ "keys": ["f12"], "command": "cursor", "args": {"action": "add"}},
{ "keys": ["f11"], "command": "cursor", "args": {"action": "show"}},
{ "keys": ["f10"], "command": "cursor", "args": {"action": "clear"}},
{ "keys": ["f9"], "command": "cursor", "args": {"action": "remove"}}
"""

import sublime
import sublime_plugin


class CursorCommand(sublime_plugin.TextCommand):
    saved_cursors_map = {}
    def run(self, edit, action="add"):
        view = self.view
        cursors = view.sel()
        view_id = view.id()
        if view_id not in self.saved_cursors_map:
            self.saved_cursors_map[view_id] = set()
        if action == "add":
            for cursor in cursors:
                self.saved_cursors_map[view_id].add(cursor.begin())
        elif action == "show" and len(self.saved_cursors_map[view_id]) > 0:
            for cursor in cursors:
                self.saved_cursors_map[view_id].add(cursor.begin())

            cursors.clear()

            for cursor in self.saved_cursors_map[view_id]:
                cursors.add(cursor)
            self.saved_cursors_map[view_id].clear()
        elif action == "clear":
            self.saved_cursors_map[view_id].clear()
        elif action == "remove":
            for cursor in cursors:
                try:
                    self.saved_cursors_map[view_id].remove(cursor.begin())
                except KeyError:
                    pass

        self.highlight_regions()

    def highlight_regions(self):
        view_id = self.view.id()
        regions = [sublime.Region(x, x) for x in self.saved_cursors_map[view_id]]
        self.view.add_regions("saved_cursor_region", regions,
                              "keyword", "", sublime.DRAW_EMPTY)

class EventListener(sublime_plugin.EventListener):
    def on_modified(self, view):
        view.run_command("cursor", {"action": "noop"})
