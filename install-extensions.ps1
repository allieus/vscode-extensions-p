$extensions =
    "azemoh.one-monokai",
    "emmanuelbeziat.vscode-great-icons",
    "ExodiusStudios.comment-anchors",
  	"PKief.material-icon-theme",
    "aaron-bond.better-comments",
    "abusaidm.html-snippets",
    "alexcvzz.vscode-sqlite",
    "batisteo.vscode-django",
    "coenraads.bracket-pair-colorizer",
    "davidanson.vscode-markdownlint",
    "dbaeumer.vscode-eslint",
    "donjayamanne.githistory",
    "dracula-theme.theme-dracula",
    "dsznajder.es7-react-js-snippets",
    "eamodio.gitlens",
    "equinusocio.vsc-community-material-theme",
    "equinusocio.vsc-material-theme",
    "equinusocio.vsc-material-theme-icons",
    "esbenp.prettier-vscode",
    "formulahendry.auto-close-tag",
    "formulahendry.auto-complete-tag",
    "formulahendry.auto-rename-tag",
    "geeksharp.openssl-configuration-file",
    "glen-84.sass-lint",
    "grapecity.gc-excelviewer",
    "hdg.live-html-previewer",
    "hookyqr.beautify",
    "jpoissonnier.vscode-styled-components",
    "kaishuu0123.vscode-erd-preview",
    "mhutchie.git-graph",
    "mikestead.dotenv",
    "minhthai.vscode-todo-parser",
    "mrmlnc.vscode-scss",
    "ms-azuretools.vscode-docker",
    "ms-ceintl.vscode-language-pack-ko",
    "ms-python.gather",
    "ms-python.python",
    "ms-python.vscode-pylance",
    "ms-toolsai.jupyter",
    "ms-vscode-remote.remote-containers",
    "ms-vscode-remote.remote-ssh",
    "ms-vscode-remote.remote-ssh-edit",
    "ms-vscode-remote.remote-wsl",
    "ms-vscode.azure-account",
    "ms-vscode.azurecli",
    "ms-vsliveshare.vsliveshare",
    "njpwerner.autodocstring",
    "oderwat.indent-rainbow",
    "roscop.activefileinstatusbar",
    "shan.code-settings-sync",
    "shd101wyy.markdown-preview-enhanced",
    "sibiraj-s.vscode-scss-formatter",
    "silvenon.mdx",
    "spywhere.guides",
    "steoates.autoimport",
    "syler.sass-indented",
    "tht13.html-preview-vscode",
    "tombonnike.vscode-status-bar-format-toggle",
    "vincaslt.highlight-matching-tag",
    "vscode-icons-team.vscode-icons",
    "vscode-styled-components",
    "wayou.vscode-todo-highlight",
    "xabikos.javascriptsnippets",
    "zhuangtongfa.material-theme",
    # WSL
    "ms-vscode-remote.remote-wsl",
    "ms-vscode-remote.remote-containers",`
    "ms-azuretools.vscode-docker"

$cmd = "code --list-extensions"
Invoke-Expression $cmd -OutVariable output | Out-Null
$installed = $output -split "\s"

foreach ($ext in $extensions) {
    if ($installed.Contains($ext)) {
        Write-Host $ext "already installed." -ForegroundColor Gray
    } else {
        Write-Host "Installing" $ext "..." -ForegroundColor White
        code --install-extension $ext
    }
}
