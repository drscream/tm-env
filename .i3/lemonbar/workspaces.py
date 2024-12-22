#!/usr/bin/env python3

import i3ipc

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()

# Prefix
visible = 'VIS'    # Workspace is visible but not focused
invisible = 'INV'  # Workspace is not visible
urgent = 'URG'     # Notification happen or something other urgent
focused = 'FOC'    # Workspace is visible and focused

# Output format
ws_prefix = 'WORKS|'
ws_format = '{}_{}|'

# Define a callback to be called when you switch workspaces.
def on_workspace_focus(self, e):
    workspace_string = ws_prefix
    workspaces = i3.get_workspaces()

    for n in workspaces:
        if n['focused']:
            workspace_string += ws_format.format(focused,n.name)
        elif n['visible']:
            workspace_string += ws_format.format(visible,n.name)
        elif n['urgent']:
            workspace_string += ws_format.format(urgent,n.name)
        else:
            workspace_string += ws_format.format(invisible,n.name)

    print(workspace_string, flush=True)

# Call if for the first time
on_workspace_focus(False, False)

# Subscribe to events
i3.on('workspace', on_workspace_focus)

# Start the main loop and wait for events to come in.
i3.main()
