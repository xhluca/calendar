#!/bin/bash

# Update your iCal file
cat <<EOL > reading-group.ics
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//example.com//EN
CALSCALE:GREGORIAN
BEGIN:VEVENT
UID:uid1@example.com
DTSTAMP:$(date -u +"%Y%m%dT%H%M%SZ")
ORGANIZER;CN=John Doe:MAILTO:john.doe@example.com
DTSTART:20230704T090000Z
DTEND:20230704T100000Z
SUMMARY:Reading Group Meeting
DESCRIPTION:Discussing the latest book.
LOCATION:Conference Room A
END:VEVENT
BEGIN:VEVENT
UID:uid2@example.com
DTSTAMP:$(date -u +"%Y%m%dT%H%M%SZ")
ORGANIZER;CN=Jane Smith:MAILTO:jane.smith@example.com
DTSTART:20230711T090000Z
DTEND:20230711T100000Z
SUMMARY:Reading Group Meeting
DESCRIPTION:Discussing the next chapters.
LOCATION:Conference Room A
END:VEVENT
END:VCALENDAR
EOL

# Commit and push changes
git add reading-group.ics
git commit -m "Update reading group calendar"
git push origin main
