# Homebrew Tap for versiontracker

This is the official Homebrew tap for [versiontracker](https://github.com/docdyhr/versiontracker) - a CLI tool to track and update macOS applications.

## ✨ Automated Updates

This tap is **automatically maintained** - the formula is updated with every `versiontracker` release:

- ✅ **Zero manual maintenance** required
- ✅ **Always up-to-date** with latest releases  
- ✅ **Automatic SHA256 calculation** for security
- ✅ **Comprehensive testing** validates each update
-  **Powered by GitHub Actions** automation

##  Installation

### Install versiontracker

```bash
# Add the tap (one-time setup)
brew tap docdyhr/versiontracker

# Install versiontracker
brew install versiontracker
```

### Direct install (without adding tap)

```bash
brew install docdyhr/versiontracker/versiontracker
```

### Keep updated

```bash
# Upgrade to latest version
brew upgrade versiontracker

# Or upgrade everything
brew upgrade
```

##  What is versiontracker?

**versiontracker** is a command-line tool for macOS that helps you manage applications installed outside of the App Store. It identifies applications that aren't managed through Apple's official channels and suggests which ones can be managed using Homebrew casks, making it easier to keep your applications up to date.

##  Usage Examples

```bash
# List all applications not updated by App Store
versiontracker --apps

# Get recommendations for Homebrew installations
versiontracker --recommend

# Check for outdated applications
versiontracker --outdated

# Export results to JSON format
versiontracker --apps --export json
```

## ✨ Features

- ✅ **List unmanaged applications**
- ✅ **Recommend Homebrew casks**
- ✅ **Check for outdated applications**
- ✅ **Export results** in JSON and CSV formats
- ✅ **Enhanced fuzzy matching** for accurate identification
- ✅ **Advanced multi-tier caching** for performance
- ✅ **macOS system integration** with notifications and a menubar app

##  Release Automation

This Homebrew tap is automatically updated through GitHub Actions:

1. ️ **New release** tagged in [versiontracker repository](https://github.com/docdyhr/versiontracker)
2.  **Automation downloads** source tarball and calculates SHA256
3.  **Formula updated** with new version and hash
4. ✅ **Changes committed** by a bot
5.  **Users get latest** via `brew upgrade versiontracker`

**No manual intervention required!** The formula stays perfectly synchronized with releases.

##  Links

- **Main Repository**: [github.com/docdyhr/versiontracker](https://github.com/docdyhr/versiontracker)
- **Releases**: [github.com/docdyhr/versiontracker/releases](https://github.com/docdyhr/versiontracker/releases)
- **PyPI**: [pypi.org/project/versiontracker/](https://pypi.org/project/versiontracker/)
- **Issues**: [github.com/docdyhr/versiontracker/issues](https://github.com/docdyhr/versiontracker/issues)

## ️ Technical Details

- **Formula Location**: `versiontracker.rb`
- **Automation Workflow**: Will be set up in the main repository.
- **Build Method**: Installs from a Python virtual environment.
- **Testing**: Comprehensive formula tests validate installation.

##  Support

- **Formula Issues**: Open an issue in the [homebrew-versiontracker repository](https://github.com/docdyhr/homebrew-versiontracker/issues)
- **versiontracker Issues**: Use the [main repository](https://github.com/docdyhr/versiontracker/issues)
- **Installation Help**: Check the [main README](https://github.com/docdyhr/versiontracker#installation)

---

**Made with ❤️ and  automation for a seamless Homebrew experience**
