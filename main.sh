#! /bin/bash

main() {
    # <manually update the version of your crate, run tests, etc>
    
    # Get the version number
    VERSION=$(grep '^version = ' Cargo.toml | sed -E 's/version = "(.*)"/\1/')
    echo "Version found in Cargo.toml: $VERSION"
    
    # commit and push to main (can be done with a PR)
    git commit -am "release: $VERSION"
    git push
    
    # actually push the tag up (this triggers dist's CI)
    git tag v$VERSION
    git push --tags
    
    # publish to crates.io (optional)
    cargo publish
}

main