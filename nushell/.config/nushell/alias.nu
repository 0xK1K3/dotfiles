# Fzf aliases
alias pfzf = fzf --preview="bat --color=always {}"
alias cat = bat
alias "git log" = git log --graph --pretty=format:'%C(yellow)%h (%Creset%Cgreen%p%Creset%C(yellow))%Creset -%Cred%d%Creset %s %Cgreen(%cr)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit --all
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
