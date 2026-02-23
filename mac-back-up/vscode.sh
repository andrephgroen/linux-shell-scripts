#! /usr/bin/env python3.9.19

import iterm2

async def main(connection):
	app = await iterm2.async_get_app(connection)
	window = app.current_terminal_window

	await iterm2.Window.async_create(connection, command="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron")

iterm2.run_until_complete(main)
