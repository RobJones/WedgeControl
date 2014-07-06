$('#after_wedges').before("<%= escape_javascript( render partial: 'wedge', locals: {wedge: @wedge}) %>")
