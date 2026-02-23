#!/usr/bin/env python3

#import iterm2

async def main(connection):
        app = await async_get_app(connection)
        window = app.current_terminal_window

        await Window.async_create(connection, command="/Applications/IntelliJ\\ IDEA.app/Contents/MacOS/idea")

run_until_complete(main)
