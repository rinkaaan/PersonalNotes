# id("com.github.ben-manes.versions") version "0.49.0"
./gradlew dependencyUpdates

# id("pl.allegro.tech.build.axion-release") version "1.15.5"
./gradlew release -Prelease.versionIncrementer=[incrementPatch|incrementMinor|incrementMajor]
