Import('env')

app = env.Command(
    target = 'app',
    source = 'src/app.swift',
    action = 'swiftc $SOURCE -o $TARGET',
)

Return('app')
