# Fzf aliases
alias pfzf = fzf --preview="bat --color=always {}"

# Miscelaneous
alias cat = bat

# Git aliases
alias gc = git commit
alias ga = git add
alias gs = git status
alias gl = git log --graph --pretty=format:'%C(yellow)%h (%Creset%Cgreen%p%Creset%C(yellow))%Creset -%Cred%d%Creset %s %Cgreen(%cr)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit --all
alias lg = lazygit
alias gd = git diff
alias gds = git diff --staged

def nfzf [] {
    try {
        let selected_file = (fzf --preview="bat --color=always {}" | str trim)
        if ($selected_file != "" and ($selected_file | path exists)) {
            nvim $selected_file
        } else {
            print "No file selected or file doesn't exist"
        }
    } catch {
        print "fzf was cancelled or failed"
    }
}
