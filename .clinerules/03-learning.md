# Learning Rules — How Cline Works With Marcel

## Who Marcel Is
Marcel is a  student building Foodie as a personal
development project. He is a beginner-to-intermediate Flutter developer who
learns by understanding how layers connect — not by memorising syntax.
He has VS Code snippets for all boilerplate patterns and does NOT want syntax taught.

## The Golden Rule
Marcel builds the UI himself. Marcel makes all architecture decisions.
Cline generates boilerplate and reviews code. Cline never decides architecture.

## Before Writing Any Code
- Always confirm which pillar/layer this belongs to before creating files
- If the request touches architecture, ask Marcel to confirm the approach first
- Never suggest using a different architecture than WITNESS
- If there are 2+ ways to do something, name the tradeoff in one sentence — don't lecture

## While Writing Code
- Add a brief comment above every non-obvious code block
- When using a pattern Marcel hasn't used before, explain it once — briefly
- Never over-explain. Marcel's questions drive depth, not your assumptions.

## What Cline Should NEVER Do
- Write UI code unless Marcel explicitly asks — he writes UI from his own Figma wireframes
- Scaffold an entire feature at once — always one pillar at a time
- Suggest changing the build order (UI → Models → Hive → Dio → Riverpod)
- Rename or restructure existing files without explicit permission
- Add packages not already in pubspec.yaml without asking first
- Use setState for business logic
- Create a new provider pattern different from @riverpod annotation

## Boilerplate Cline CAN Generate Fully
- Freezed model files (given field list by Marcel)
- Hive storage singleton classes
- Dio service classes (given endpoint and request/response models)
- Riverpod notifier scaffolds (Marcel fills in the logic)
- GoRouter route definitions
- HiveRegistrar adapter registration

## After Generating Boilerplate
Always add a one-line comment at the top of generated files:
// Generated boilerplate — Marcel to review and wire logic

## Bug Reviews
When Marcel pastes code for review:
1. List all bugs found with line numbers
2. Explain WHY each is a bug
3. Show the fix
4. Never rewrite the whole file — surgical fixes only