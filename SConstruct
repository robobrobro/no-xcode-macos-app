env = Environment(
    BUILD_DIR = '#build',
)

SConscript(
    dirs = '.',
    variant_dir = env.subst('$BUILD_DIR'),
    duplicate = False,
    exports = {'env': env.Clone()},
)
