theme_ben <- function(base_size = 14) {
    theme_bw(base_size = base_size) %+replace%
        theme(
            # L'ensemble de la figure
            plot.title = element_text(size = rel(1), face = "bold", margin = margin(0,0,5,0), hjust = 0),
            line = element_blank(),
            plot.background = element_rect(fill ='#222222' ),
            
            panel.background = element_rect(fill ='#222222' ),
            text = element_text(colour = 'white'),
            # Zone où se situe le graphique
            panel.grid.minor = element_blank(),
            panel.border = element_blank(),
            # Les axes
            axis.title = element_text(size = rel(0.85), face = "bold"),
            axis.text = element_text(size = rel(0.70), face = "bold"),
            axis.line = element_line(color = "white", 
                                     # arrow = arrow(length = unit(0.3, "lines"), 
                                     #               type = "closed")
                                     ),
            # La légende
            legend.title = element_text(size = rel(0.85), face = "bold"),
            legend.text = element_text(size = rel(0.70), face = "bold"),
            legend.key = element_rect(fill = "transparent", colour = NA),
            legend.key.size = unit(1.5, "lines"),
            legend.background = element_rect(fill = "transparent", colour = NA),
            # Les étiquettes dans le cas d'un facetting
            strip.text = element_text(size = rel(0.85), face = "bold", color = "black", margin = margin(5,0,5,0)),
            strip.background = element_rect(colour = '#f1f1f1')
        )
}

theme_table <- function(table){
    DT::datatable(table,
                  options = list(
                      dom = 't',
                      initComplete = DT::JS(
                          "function(settings, json) {",
                          "$(this.api().table().header()).css({ 'color': '#00bc8c'});",
                          "}"),
                      columnDefs = list(
                          list(
                              targets = 4,
                              render = DT::JS(
                                  "function(data, type, row, meta) {",
                                  "return type === 'display' && data.length > 6 ?",
                                  "'<span title=\"' + data + '\">' + data.substr(0, 64) + '...</span>' : data;",
                                  "}")
                          ),
                          list(targets = 0, visible = FALSE) )
                  )) |> 
        DT::formatStyle(names(table), backgroundColor = '#222222', color = '#ffffff')
    
}


theme_table_4 <- function(table){
    DT::datatable(table,
              options = list(
                  dom = 't',
                  initComplete = DT::JS(
                      "function(settings, json) {",
                      "$(this.api().table().header()).css({ 'color': '#00bc8c'});",
                      "}"),
                  columnDefs = list(
                      list(
                          targets = 4,
                          render = DT::JS(
                            "function(data, type, row, meta) {",
                            "return type === 'display' && data.length > 6 ?",
                            "'<span title=\"' + data + '\">' + data.substr(0, 64) + '...</span>' : data;",
                            "}")
                          ),
                      list(targets = 0, visible = FALSE) )
                  )) |> 
        DT::formatStyle(names(table), backgroundColor = '#222222', color = '#ffffff')
    
}

theme_table_5 <- function(table){
    DT::datatable(table,
                  options = list(
                      dom = 't',
                      initComplete = DT::JS(
                          "function(settings, json) {",
                          "$(this.api().table().header()).css({ 'color': '#00bc8c'});",
                          "}"),
                      columnDefs = list(
                          list(
                              targets = 5,
                              render = DT::JS(
                                  "function(data, type, row, meta) {",
                                  "return type === 'display' && data.length > 6 ?",
                                  "'<span title=\"' + data + '\">' + data.substr(0, 64) + '...</span>' : data;",
                                  "}")
                          ),
                          list(targets = 0, visible = FALSE) )
                  )) |> 
        DT::formatStyle(names(table), backgroundColor = '#222222', color = '#ffffff')
    
}

clrs <- c("#ff3046", "#00bc8c")