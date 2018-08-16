- dashboard: customer_users_overview
  title: Customer Users Overview
  layout: newspaper
  elements:
  - title: OS used
    name: OS used
    model: i__looker
    explore: session
    type: looker_pie
    fields:
    - user.count
    - session.operating_system
    sorts:
    - user.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors:
      OS X 10.13.4: "#eb7d22"
      OS X 10.13.3: "#3e3e40"
      OS X 10.13.2: "#e74b4b"
      OS X 10.12.6: "#c96741"
      ChromeOS 10176.73.0: "#f1a792"
      ChromeOS 10323.67.0: "#e7bdb8"
      OS X 10.13.1: "#3e3e40"
    listen: {}
    row: 18
    col: 17
    width: 7
    height: 6
  - title: Browser
    name: Browser
    model: i__looker
    explore: session
    type: looker_pie
    fields:
    - user.count
    - session.browser
    sorts:
    - user.count desc
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    series_types: {}
    series_colors:
      Chrome: "#eb7d22"
    listen: {}
    row: 12
    col: 17
    width: 7
    height: 6
  - title: Non Active Users
    name: Non Active Users
    model: i__looker
    explore: history
    type: table
    fields:
    - user.first_name
    - user.last_name
    - history.most_recent_query_date
    - user.email
    filters:
      history.most_recent_query_date: before 2 months ago
    sorts:
    - history.most_recent_query_date
    limit: 10
    query_timezone: America/New_York
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    hidden_points_if_no: []
    hidden_fields:
    series_labels:
      history.most_recent_query_date: Most Recent Query Date
    listen: {}
    row: 21
    col: 6
    width: 6
    height: 6
  - title: New Tile
    name: New Tile
    model: i__looker
    explore: scheduled_plan
    type: single_value
    fields:
    - scheduled_plan.count
    filters:
      scheduled_plan.run_once: 'no'
    sorts:
    - scheduled_plan.count desc
    limit: 10
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    series_colors:
      scheduled_plan.count: "#eb7d22"
    single_value_title: Schedules Count
    listen: {}
    row: 12
    col: 0
    width: 4
    height: 2
  - title: One Tile
    name: One Tile
    model: i__looker
    explore: dashboard
    type: single_value
    fields:
    - dashboard.count
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Dashboards Count
    listen: {}
    row: 16
    col: 0
    width: 4
    height: 2
  - title: Dev and Admins
    name: Dev and Admins
    model: i__looker
    explore: user
    type: single_value
    fields:
    - user.count
    filters:
      role.name: Developer,Admin
      user.is_looker: 'No'
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Developers and Admins
    listen: {}
    row: 14
    col: 0
    width: 4
    height: 2
  - title: Table Calculations Usage
    name: Table Calculations Usage
    model: i__looker
    explore: history
    type: looker_column
    fields:
    - user.name
    - query.count
    filters:
      history.created_date: 30 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
      query.dynamic_fields: "-[],-NULL,-%offset%"
    sorts:
    - query.count desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_label_rotation: -45
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors:
    - 'palette: Mixed Pastels'
    series_colors:
      query.count: "#eb7d22"
    x_axis_label: ''
    y_axes:
    - label: Table Calculations
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: query.count
        name: Query
        axisId: query.count
        __FILE: MODEL_NAME/usage.dashboard.lookml
        __LINE_NUM: 344
      __FILE: MODEL_NAME/usage.dashboard.lookml
      __LINE_NUM: 332
    series_labels:
      query.count: Table Calculations
    listen: {}
    row: 6
    col: 17
    width: 7
    height: 6
  - title: Total Active Users last month % change previous month
    name: Total Active Users last month % change previous month
    model: i__looker
    explore: history
    type: single_value
    fields:
    - user.count
    - history.created_month_name
    filters:
      history.created_date: 2 months ago for 2 months
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - user.count desc
    limit: 100
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_user_count
      label: Total User Count
      expression: "${user.count}/offset(${user.count},1)-1"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_scale: auto
    show_view_names: false
    x_axis_label_rotation: -45
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    single_value_title: Users Last Month
    comparison_label: Previous Month
    listen: {}
    row: 6
    col: 0
    width: 4
    height: 4
  - title: Active User Stats Last 30 Days
    name: Active User Stats Last 30 Days
    model: i__looker
    explore: history
    type: table
    fields:
    - user.name
    - history.approximate_usage_in_minutes
    - history.query_run_count
    - history.average_runtime
    - history.total_runtime
    - history.max_runtime
    - history.most_recent_query_date
    filters:
      history.created_date: 30 days
      history.source: "-'scheduled_task'"
      user.is_looker: 'No'
    sorts:
    - history.approximate_usage_in_minutes DESC
    limit: 100
    column_limit: 50
    x_axis_scale: auto
    show_view_names: false
    x_axis_label_rotation: -45
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 12
    col: 4
    width: 13
    height: 9
  - title: View Only Users
    name: View Only Users
    model: i__looker
    explore: user
    type: table
    fields:
    - user.name
    filters:
      group.name: View Only
    sorts:
    - user.name
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 29
    col: 16
    width: 4
    height: 5
  - title: Developer Users
    name: Developer Users
    model: i__looker
    explore: user
    type: table
    fields:
    - user.name
    filters:
      group.name: Developer
      role.name: ''
    sorts:
    - user.name
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 29
    col: 4
    width: 4
    height: 5
  - title: Admin Users
    name: Admin Users
    model: i__looker
    explore: user
    type: table
    fields:
    - user.name
    filters:
      group.name: ''
      role.name: Admin
      user.is_looker: 'No'
    sorts:
    - user.name
    limit: 500
    query_timezone: UTC
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 29
    col: 0
    width: 4
    height: 5
  - title: Power Users
    name: Power Users
    model: i__looker
    explore: user
    type: table
    fields:
    - user.name
    filters:
      group.name: Power Users
    sorts:
    - user.name
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 29
    col: 12
    width: 4
    height: 5
  - title: Super Power Users
    name: Super Power Users
    model: i__looker
    explore: user
    type: table
    fields:
    - user.name
    filters:
      group.name: Super Power User
    sorts:
    - user.name
    limit: 500
    query_timezone: UTC
    listen: {}
    row: 29
    col: 8
    width: 4
    height: 5
  - name: User List
    type: text
    title_text: User List
    row: 27
    col: 0
    width: 24
    height: 2
  - name: <img src="IMG_URL"
      height=81px width=122px>
    type: text
    title_text: <img src="IMG_URL"
      height=81px width=122px>
    subtitle_text: Instance Usage
    body_text: This dashboard highlights user activity and usage of features. Can
      also be used to assess query runtimes and performance at a high level.
    row: 0
    col: 0
    width: 4
    height: 6
  - title: pw Users
    name: pw Users
    model: i__looker
    explore: history
    type: looker_column
    fields:
    - query.count
    - user.name
    filters:
      user.is_looker: 'No'
    sorts:
    - query.count desc
    limit: 10
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    show_null_points: true
    point_style: none
    interpolation: linear
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_points_if_no: []
    hidden_fields:
    series_colors:
      query.count: "#eb7d22"
    colors:
    - 'palette: Mixed Pastels'
    listen: {}
    row: 6
    col: 4
    width: 7
    height: 6
  - title: Most Active Developper
    name: Most Active Developper
    model: i__looker
    explore: event
    type: looker_column
    fields:
    - event.count
    - user.name
    filters:
      event.category: git
    sorts:
    - event.count desc
    limit: 10
    row_total: right
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    series_colors:
      event.count: "#eb7d22"
    listen: {}
    row: 6
    col: 11
    width: 6
    height: 6
  - title: Two Tile
    name: Two Tile
    model: i__looker
    explore: user
    type: single_value
    fields:
    - user.count
    - user.is_disabled
    filters:
      user.is_disabled: 'No'
      user.is_looker: 'No'
    sorts:
    - user.count desc
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    series_types: {}
    single_value_title: Users All Time
    listen: {}
    row: 10
    col: 0
    width: 4
    height: 2
  - title: Query Trend
    name: Query Trend
    model: i__looker
    explore: history
    type: looker_area
    fields:
    - query.count
    - history.created_date
    fill_fields:
    - history.created_date
    filters:
      history.created_date: 30 days
      user.is_looker: 'No'
    sorts:
    - history.created_date desc
    limit: 500
    query_timezone: UTC
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: false
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    ordering: none
    show_null_labels: false
    series_types: {}
    colors:
    - 'palette: Mixed Pastels'
    series_colors:
      query.count: "#eb7d22"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: query.count
        name: Query
        axisId: query.count
        __FILE: MODEL_NAME/usage.dashboard.lookml
        __LINE_NUM: 838
      __FILE: MODEL_NAME/usage.dashboard.lookml
      __LINE_NUM: 826
    note_state: collapsed
    note_display: below
    note_text: Queries Over Time
    listen: {}
    title_hidden: true
    row: 18
    col: 0
    width: 4
    height: 3
  - title: Most Active Scheduler
    name: Most Active Scheduler
    model: i__looker
    explore: scheduled_plan
    type: looker_column
    fields:
    - scheduled_plan.count
    - user.name
    filters:
      scheduled_plan.run_once: 'no'
    sorts:
    - scheduled_plan.count desc
    limit: 10
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#eb7d22"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    series_colors:
      scheduled_plan.count: "#bb1034"
    listen: {}
    row: 21
    col: 0
    width: 6
    height: 6
  - title: Average Runtime and User Activity
    name: Average Runtime and User Activity
    model: i__looker
    explore: history
    type: looker_area
    fields:
    - history.average_runtime
    - history.created_date
    - history.approximate_usage_in_minutes
    - user.count
    fill_fields:
    - history.created_date
    filters:
      history.created_date: 14 days
    sorts:
    - history.created_date desc
    limit: 500
    query_timezone: Europe/Paris
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      user.count: "#2d9c8a"
    series_labels:
      user.count: "# Users"
    limit_displayed_rows: false
    hidden_series:
    - history.approximate_usage_in_minutes
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: history.average_runtime
        name: History Average Runtime
        axisId: history.average_runtime
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: right
      series:
      - id: history.approximate_usage_in_minutes
        name: History Approximate Web Usage in Minutes
        axisId: history.approximate_usage_in_minutes
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines:
    - reference_type: line
      line_value: '6'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: 6 sec
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 4
    width: 20
    height: 6
