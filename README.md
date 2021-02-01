# Preface
This is an optional parent.

If you add this, you will get a list of fixed plugin version.
This will affect that the build will be more stabe.
In addition you will get some helpful profiles

```
    <parent>
        <groupId>de.messetat.maven</groupId>
        <artifactId>parent</artifactId>
        <version>1.0</version>
    </parent>
```
# Profiles
##  Profile Id: list-profiles (Active: true , Source: pom)
List all availabe profiles of the current pom.
##  Profile Id: checkstyle (Active: false , Source: pom)
Switch to run a pedantic code check :-)