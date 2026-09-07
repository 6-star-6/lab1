##Issue
- Environment: Linux / Python 3
- Reproduce command: 'sdt-greet --name " "'
- Expected result: Program exits with code 2, no greeting output.
- Actual result: Output greeting "Hello,  !", exit with code 0.
- Additional info: To be confirmed.
## Commit messagage
Fix: reject input with all-whitespace name
Detect name argument that consists purely of whitespace.
When detected, exit with status code 2 without printing greeting message.
##Review comment
Blocking: The program accepts name argument containing only spaces.
Risk: Callers cannot distinguish valid empty name from real input.
Suggested action: Add whitespace check before generating greeting output.
