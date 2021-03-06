# --
# Copyright (C) 2009 Bin Du <bindu2008 at gmail.com>
# Copyright (C) 2009 Yiye Huang <yiyehuang at gmail.com>
# Copyright (C) 2009 Qingjiu Jia <jiaqj at yahoo.com>
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::zh_TW;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # $$START$$
    # possible charsets
    $Self->{Charset} = ['utf-8', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Year;)
    $Self->{DateFormat}          = '%Y.%M.%D %T';
    $Self->{DateFormatLong}      = ' %A %Y/%M/%D %T';
    $Self->{DateFormatShort}     = '%Y.%M.%D';
    $Self->{DateInputFormat}     = '%Y.%M.%D';
    $Self->{DateInputFormatLong} = '%Y.%M.%D - %T';
    $Self->{Completeness}        = 0.416576263831634;

    # csv separator
    $Self->{Separator} = '';

    $Self->{Translation} = {

        # Template: AdminACL
        'ACL Management' => 'ACL管理',
        'Actions' => '操作',
        'Create New ACL' => '創建ACL',
        'Deploy ACLs' => '部署ACL',
        'Export ACLs' => '導出ACL',
        'Filter for ACLs' => '過濾ACL',
        'Just start typing to filter...' => '',
        'Configuration Import' => '',
        'Here you can upload a configuration file to import ACLs to your system. The file needs to be in .yml format as exported by the ACL editor module.' =>
            '您可以上傳配置文件，以便將ACL導入至系統中。配置文件採用.yml格式，它可以從ACL管理模塊中導出。',
        'This field is required.' => '該字段是必須的。',
        'Overwrite existing ACLs?' => '覆蓋ACL',
        'Upload ACL configuration' => '上傳ACL配置',
        'Import ACL configuration(s)' => '導入ACL配置',
        'Description' => '描述',
        'To create a new ACL you can either import ACLs which were exported from another system or create a complete new one.' =>
            '為了創建ACL，您可以導入ACL配置或從頭創建一個全新的ACL。',
        'Changes to the ACLs here only affect the behavior of the system, if you deploy the ACL data afterwards. By deploying the ACL data, the newly made changes will be written to the configuration.' =>
            '在這裡的任何ACL的修改，僅將其保存在系統中。只有在部署ACL後，它才會起作用。',
        'ACLs' => '',
        'Please note: This table represents the execution order of the ACLs. If you need to change the order in which ACLs are executed, please change the names of the affected ACLs.' =>
            '註意：列表中的ACL名稱排序順序決定了ACL的執行順序。如果需要更改ACL的執行順序，請修改相應的ACL名稱。',
        'ACL name' => 'ACL名稱',
        'Comment' => '註釋',
        'Validity' => '有效性',
        'Export' => '導出',
        'Copy' => '複製',
        'No data found.' => '沒有找到數據。',
        'No matches found.' => '沒有找到相匹配的.',

        # Template: AdminACLEdit
        'Edit ACL %s' => '編輯ACL %s',
        'Go to overview' => '返回概覽',
        'Delete ACL' => '刪除ACL',
        'Delete Invalid ACL' => '刪除無效的ACL',
        'Match settings' => '匹配條件',
        'Set up matching criteria for this ACL. Use \'Properties\' to match the current screen or \'PropertiesDatabase\' to match attributes of the current ticket that are in the database.' =>
            '為ACL設置匹配條件。\'Properties\'用於匹配工單在内存中的屬性\'，而\'PropertiesDatabase\'用於匹配工單在數據庫中的屬性。',
        'Change settings' => '操作動作',
        'Set up what you want to change if the criteria match. Keep in mind that \'Possible\' is a white list, \'PossibleNot\' a black list.' =>
            '當匹配條件滿足時執行規定的操作動作。記住：\'Possible\'表示允許(白名單)，\'PossibleNot\'表示禁止(黑名單)。',
        'Check the official' => '查看官方',
        'documentation' => '手冊',
        'Show or hide the content' => '顯示或隱藏内容',
        'Edit ACL Information' => '',
        'Name' => '名稱',
        'Stop after match' => '匹配後停止',
        'Edit ACL Structure' => '',
        'Save' => '保存',
        'or' => '在',
        'Save and finish' => '保存並完成',
        'Cancel' => '取消',
        'Do you really want to delete this ACL?' => '您確定要刪除這個ACL嗎？',

        # Template: AdminACLNew
        'Create a new ACL by submitting the form data. After creating the ACL, you will be able to add configuration items in edit mode.' =>
            '通過填寫表數據實現ACL控制。創建ACL後，就可在編輯模式中添加ACL配置信息。',

        # Template: AdminAttachment
        'Attachment Management' => '附件管理',
        'Add attachment' => '添加附件',
        'Filter for Attachments' => '過濾附件',
        'Filter for attachments' => '',
        'List' => '列表',
        'Filename' => '文件名稱',
        'Changed' => '修改於',
        'Created' => '創建於',
        'Delete' => '刪除',
        'Download file' => '下載文件',
        'Delete this attachment' => '刪除附件',
        'Add Attachment' => '添加附件',
        'Edit Attachment' => '編輯附件',
        'Attachment' => '附件',

        # Template: AdminAutoResponse
        'Auto Response Management' => '自動回復管理',
        'Add auto response' => '添加自動回復',
        'Filter for Auto Responses' => '過濾回復',
        'Filter for auto responses' => '',
        'Type' => '類型',
        'Add Auto Response' => '添加自動回復',
        'Edit Auto Response' => '編輯自動回復',
        'Subject' => '主題',
        'Response' => '回復内容',
        'Auto response from' => '自動回復的發件人',
        'Reference' => '相關参考',
        'You can use the following tags' => '您可以使用以下的標記',
        'To get the first 20 character of the subject.' => '顯示主題的前20個字節',
        'To get the first 5 lines of the email.' => '顯示郵件的前五行',
        'To get the realname of the sender (if given).' => '顯示發件人的真實姓名',
        'To get the article attribute' => '信件數據屬性',
        ' e. g.' => '例如',
        'Options of the current customer user data' => '用戶資料屬性',
        'Ticket owner options' => '工單所有者屬性',
        'Ticket responsible options' => '工單負責人屬性',
        'Options of the current user who requested this action' => '工單提交者的屬性',
        'Options of the ticket data' => '工單數據屬性',
        'Options of ticket dynamic fields internal key values' => '工單動態字段内部鍵值',
        'Options of ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '動態字段顯示名稱，用於下拉選擇和複選框',
        'Config options' => '系統配置數據',
        'Example response' => '這裡有一個範例',

        # Template: AdminCloudServiceSupportDataCollector
        'Cloud Service Management' => '',
        'Support Data Collector' => '',
        'Support data collector' => '',
        'Hint' => '提示',
        'Currently support data is only shown in this system.' => '',
        'It is highly recommended to send this data to OTRS Group in order to get better support.' =>
            '',
        'Configuration' => '配置',
        'Send support data' => '',
        'This will allow the system to send additional support data information to OTRS Group.' =>
            '',
        'Update' => '更新',
        'System Registration' => '系統註冊',
        'To enable data sending, please register your system with OTRS Group or update your system registration information (make sure to activate the \'send support data\' option.)' =>
            '',
        'Register this System' => '',
        'System Registration is disabled for your system. Please check your configuration.' =>
            '',

        # Template: AdminCloudServices
        'System registration is a service of OTRS Group, which provides a lot of advantages!' =>
            '系統註冊是OTRS集團的一項服務，它為您提供了很多好處!',
        'Please note that the use of OTRS cloud services requires the system to be registered.' =>
            '',
        'Register this system' => '',
        'Here you can configure available cloud services that communicate securely with %s.' =>
            '',
        'Available Cloud Services' => '',
        'Upgrade to %s' => '',

        # Template: AdminCustomerCompany
        'Customer Management' => '用戶單位管理',
        'Search' => '搜索',
        'Wildcards like \'*\' are allowed.' => '允許使用通配置符，例如\'*\'。',
        'Add customer' => '添加用戶單位',
        'Select' => '選擇',
        'shown' => '',
        'total' => '',
        'Please enter a search term to look for customers.' => '請輸入搜索條件以便檢索用戶單位資料.',
        'CustomerID' => '單位編號',
        'Add Customer' => '添加用戶單位',
        'Edit Customer' => '編輯用戶單位',
        'Please note' => '',
        'This customer backend is read only!' => '',

        # Template: AdminCustomerUser
        'Customer User Management' => '用戶管理',
        'Back to search results' => '返回至搜索結果',
        'Add customer user' => '添加用戶',
        'Customer user are needed to have a customer history and to login via customer panel.' =>
            '用戶資料用於記錄工單歷史並允許用戶訪問服務台門戶網站。',
        'Username' => '用戶名',
        'Email' => '郵件地址',
        'Last Login' => '上次登錄時間',
        'Login as' => '登陸用戶門戶',
        'Switch to customer' => '切換至用戶',
        'Add Customer User' => '添加用戶',
        'Edit Customer User' => '編輯用戶',
        'This customer backend is read only, but the customer user preferences can be changed!' =>
            '',
        'This field is required and needs to be a valid email address.' =>
            '必須輸入有效的郵件地址。',
        'This email address is not allowed due to the system configuration.' =>
            '郵件地址不符合系統配置要求。',
        'This email address failed MX check.' => '該郵件域名的MX記錄檢查無效。',
        'DNS problem, please check your configuration and the error log.' =>
            'DNS問題，請檢查您的配置和錯誤日誌文件。',
        'The syntax of this email address is incorrect.' => '該郵件地址語法錯誤。',

        # Template: AdminCustomerUserGroup
        'Manage Customer-Group Relations' => '管理用戶與組的歸屬關係',
        'Notice' => '註意',
        'This feature is disabled!' => '該功能已關閉',
        'Just use this feature if you want to define group permissions for customers.' =>
            '該功能用於為用戶定義權限組。',
        'Enable it here!' => '打開該功能',
        'Edit Customer Default Groups' => '定義用戶的默認組',
        'These groups are automatically assigned to all customers.' => '默認組會自動指派給所有用戶。',
        'You can manage these groups via the configuration setting "CustomerGroupAlwaysGroups".' =>
            '您可能通過配置参數"CustomerGroupAlwaysGroups"定義默認組。',
        'Filter for Groups' => '過濾組',
        'Select the customer:group permissions.' => '選擇用戶:組權限。',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the customer).' =>
            '如果沒有選擇，就不具備該組的任何權限 (用戶不能創建或讀取工單)。',
        'Search Results' => '搜索結果',
        'Customers' => '用戶單位',
        'Groups' => '組',
        'Change Group Relations for Customer' => '此用戶屬於哪些組',
        'Change Customer Relations for Group' => '哪些用戶屬於此組',
        'Toggle %s Permission for all' => '切換%s權限給全部',
        'Toggle %s permission for %s' => '切換%s權限給%s',
        'Customer Default Groups:' => '用戶的默認組:',
        'No changes can be made to these groups.' => '不能更改默認組.',
        'ro' => '',
        'Read only access to the ticket in this group/queue.' => '對於組/隊列中的工單具有 \'讀\' 的權限',
        'rw' => '',
        'Full read and write access to the tickets in this group/queue.' =>
            '對於組/隊列中的工單具有 \'讀和寫\' 的權限',

        # Template: AdminCustomerUserService
        'Manage Customer-Services Relations' => '管理用戶與服務之間的關系',
        'Edit default services' => '修改默認服務',
        'Filter for Services' => '過濾服務',
        'Services' => '服務',
        'Allocate Services to Customer' => '為此用戶選擇服務',
        'Allocate Customers to Service' => '選擇使用此服務的用戶',
        'Toggle active state for all' => '切換激活狀態給全部',
        'Active' => '激活',
        'Toggle active state for %s' => '切換激活狀態給%s',

        # Template: AdminDynamicField
        'Dynamic Fields Management' => '動態字段管理',
        'Add new field for object' => '為對象添加新的字段',
        'Filter for Dynamic Fields' => '',
        'Filter for dynamic fields' => '',
        'To add a new field, select the field type from one of the object\'s list, the object defines the boundary of the field and it can\'t be changed after the field creation.' =>
            '',
        'Dynamic Fields List' => '動態字段列表',
        'Settings' => '設置',
        'Dynamic fields per page' => '每頁動態字段個數',
        'Label' => '標記',
        'Order' => '順序',
        'Object' => '對象',
        'Delete this field' => '刪除這個字段',
        'Do you really want to delete this dynamic field? ALL associated data will be LOST!' =>
            '您確定要刪除這個動態字段嗎? 所有關聯的數據將丢失!',
        'Delete field' => '刪除字段',
        'Deleting the field and its data. This may take a while...' => '',

        # Template: AdminDynamicFieldCheckbox
        'Dynamic Fields' => '動態字段',
        'Field' => '字段',
        'Go back to overview' => '返回概況',
        'General' => '常規',
        'This field is required, and the value should be alphabetic and numeric characters only.' =>
            '這個字段是必需的，且它的值只能是字母和數字。',
        'Must be unique and only accept alphabetic and numeric characters.' =>
            '必須是唯一的且只有接受字母和數字字符',
        'Changing this value will require manual changes in the system.' =>
            '只能對數據庫中直接操作才能修改這個值',
        'This is the name to be shown on the screens where the field is active.' =>
            '標記值作為字段名稱顯示在屏幕上',
        'Field order' => '字段順序',
        'This field is required and must be numeric.' => '這個字段是必需的且必須是數字',
        'This is the order in which this field will be shown on the screens where is active.' =>
            '決定動態字段在屏幕上的顯示順序',
        'Field type' => '字段類型',
        'Object type' => '對象類型',
        'Internal field' => '内置字段',
        'This field is protected and can\'t be deleted.' => '這是内置字段，不能刪除它。',
        'Field Settings' => '字段設置',
        'Default value' => '默認值',
        'This is the default value for this field.' => '此值是字段的默認值',

        # Template: AdminDynamicFieldDateTime
        'Default date difference' => '默認的日期差',
        'This field must be numeric.' => '字段值必須是數字字符',
        'The difference from NOW (in seconds) to calculate the field default value (e.g. 3600 or -60).' =>
            '用“此刻”的時差(秒)計算默認值(例如，3600或-60)',
        'Define years period' => '定義年期',
        'Activate this feature to define a fixed range of years (in the future and in the past) to be displayed on the year part of the field.' =>
            '激活此選項來定義固定的年份範圍(過去的和未來的), 用於顯示在此字段的年份中.',
        'Years in the past' => '過去的幾年',
        'Years in the past to display (default: 5 years).' => '顯示過去的幾年 (默認: 5年)',
        'Years in the future' => '未來的幾年',
        'Years in the future to display (default: 5 years).' => '顯示未來的幾年 (默認: 5年)',
        'Show link' => '顯示鏈接',
        'Here you can specify an optional HTTP link for the field value in Overviews and Zoom screens.' =>
            '可以為字段值指定一個可選的HTTP鏈接，以便其顯示在工單概況和工單詳情中。',
        'Example' => '範例',
        'Link for preview' => '',
        'If filled in, this URL will be used for a preview which is shown when this link is hovered in ticket zoom. Please note that for this to work, the regular URL field above needs to be filled in, too.' =>
            '',
        'Restrict entering of dates' => '',
        'Here you can restrict the entering of dates of tickets.' => '',

        # Template: AdminDynamicFieldDropdown
        'Possible values' => '可選值',
        'Key' => '鍵',
        'Value' => '值',
        'Remove value' => '刪除值',
        'Add value' => '添加值',
        'Add Value' => '添加值',
        'Add empty value' => '添加空值',
        'Activate this option to create an empty selectable value.' => '激活此選項, 創建可選擇的空值.',
        'Tree View' => '樹狀視圖',
        'Activate this option to display values as a tree.' => '激活此項，將以樹狀形式顯示值',
        'Translatable values' => '可翻譯的值',
        'If you activate this option the values will be translated to the user defined language.' =>
            '激活此項，將用自定義的語言翻譯字段值',
        'Note' => '備註',
        'You need to add the translations manually into the language translation files.' =>
            '需要您手動將翻譯内容添加到翻譯文件中',

        # Template: AdminDynamicFieldText
        'Number of rows' => '行數',
        'Specify the height (in lines) for this field in the edit mode.' =>
            '定義編輯窗口的行數',
        'Number of cols' => '列寬',
        'Specify the width (in characters) for this field in the edit mode.' =>
            '定義編輯窗口的列寬',
        'Check RegEx' => '',
        'Here you can specify a regular expression to check the value. The regex will be executed with the modifiers xms.' =>
            '',
        'RegEx' => '',
        'Invalid RegEx' => '',
        'Error Message' => '出錯信息',
        'Add RegEx' => '',

        # Template: AdminEmail
        'Admin Notification' => '管理員通知',
        'With this module, administrators can send messages to agents, group or role members.' =>
            '通過此模塊，管理員可以按組和角色給服務人員和用戶發送消息。',
        'Create Administrative Message' => '創建管理員通知',
        'Your message was sent to' => '您的信息已被發送到',
        'From' => '發件人',
        'Send message to users' => '發送信息給註冊用戶',
        'Send message to group members' => '發送信息到組成員',
        'Group members need to have permission' => '組成員需要權限',
        'Send message to role members' => '發送信息到角色成員',
        'Also send to customers in groups' => '同樣發送到該組的用戶',
        'Body' => '内容',
        'Send' => '發送',

        # Template: AdminGenericAgent
        'Generic Agent' => '計劃任務',
        'Add job' => '添加任務',
        'Filter for Generic Agent Jobs' => '',
        'Filter for generic agent jobs' => '',
        'Last run' => '最後運行',
        'Run Now!' => '現在運行!',
        'Delete this task' => '刪除這個任務',
        'Run this task' => '執行這個任務',
        'Job Settings' => '任務設置',
        'Job name' => '任務名稱',
        'The name you entered already exists.' => '您輸入的名稱已經存在。',
        'Toggle this widget' => '收起/展開Widget',
        'Automatic Execution (Multiple Tickets)' => '',
        'Execution Schedule' => '按計劃執行',
        'Schedule minutes' => '分',
        'Schedule hours' => '時',
        'Schedule days' => '日',
        'Currently this generic agent job will not run automatically.' =>
            '目前該計劃任務不會自動運行',
        'To enable automatic execution select at least one value from minutes, hours and days!' =>
            '若要啟用自動執行，則需選擇分鐘，時間或天',
        'Event Based Execution (Single Ticket)' => '',
        'Event Triggers' => '事件觸發器',
        'List of all configured events' => '配置的事件列表',
        'Event' => '事件',
        'Delete this event' => '刪除這個事件',
        'Additionally or alternatively to a periodic execution, you can define ticket events that will trigger this job.' =>
            '此外，為了让此任務定期反復地執行，您需要定義工單事件，以便觸發任務的執行。',
        'If a ticket event is fired, the ticket filter will be applied to check if the ticket matches. Only then the job is run on that ticket.' =>
            '如果工單事件被觸發，工單過濾器將對工單進行檢查看其條件是否匹配。任務只對匹配的工單發生作用。',
        'Do you really want to delete this event trigger?' => '您確定要刪除這個事件觸發器嗎？',
        'Add Event Trigger' => '添加事件觸發器',
        'Add Event' => '',
        'To add a new event select the event object and event name and click on the "+" button' =>
            '選擇事件對象和事件名稱，然後點擊"+"按鈕，即可添加新的事件。',
        'Select Tickets' => '',
        '(e. g. 10*5155 or 105658*)' => '  例如: 10*5144 或者 105658*',
        'Title' => '標題',
        '(e. g. 234321)' => '例如: 234321',
        'Customer user' => '用戶',
        '(e. g. U5150)' => '例如: U5150',
        'Fulltext-search in article (e. g. "Mar*in" or "Baue*").' => '在信件中全文檢索（例如："Mar*in" or "Baue*"）',
        'To' => '收件人',
        'Cc' => '抄送',
        'Text' => '正文',
        'Service' => '服務',
        'Service Level Agreement' => '服務水平協議',
        'Priority' => '優先級',
        'Queue' => '隊列',
        'State' => '狀態',
        'Agent' => '服務人員',
        'Owner' => '所有者',
        'Responsible' => '負責人',
        'Ticket lock' => '工單鎖定',
        'Create times' => '創建時間',
        'No create time settings.' => '沒有創建時間。',
        'Ticket created' => '工單創建時間(相對)',
        'Ticket created between' => '工單創建時間(絕對)',
        'and' => '及',
        'Last changed times' => '',
        'No last changed time settings.' => '',
        'Ticket last changed' => '',
        'Ticket last changed between' => '',
        'Change times' => '修改時間',
        'No change time settings.' => '沒有修改時間',
        'Ticket changed' => '修改工單時間(相對)',
        'Ticket changed between' => '工單修改時間(絕對)',
        'Close times' => '關閉時間',
        'No close time settings.' => '沒有關閉時間',
        'Ticket closed' => '工單關閉時間(相對)',
        'Ticket closed between' => '工單關閉時間(絕對)',
        'Pending times' => '掛起時間',
        'No pending time settings.' => '沒有掛起時間',
        'Ticket pending time reached' => '工單掛起時間(相對)',
        'Ticket pending time reached between' => '工單掛起時間(絕對)',
        'Escalation times' => '升級時間',
        'No escalation time settings.' => '沒有升級時間',
        'Ticket escalation time reached' => '工單升級時間(相對)',
        'Ticket escalation time reached between' => '工單升級時間(絕對)',
        'Escalation - first response time' => '升級 - 第一響應時間',
        'Ticket first response time reached' => '工單升級 - 第一響應時間(相對)',
        'Ticket first response time reached between' => '工單升級 - 第一響應時間(絕對)',
        'Escalation - update time' => '升級 - 更新時間',
        'Ticket update time reached' => '工單升級 - 更新時間(相對)',
        'Ticket update time reached between' => '工單升級 - 更新時間(絕對)',
        'Escalation - solution time' => '升級 - 解決時間',
        'Ticket solution time reached' => '工單升級 - 解決時間(相對)',
        'Ticket solution time reached between' => '工單升級 - 解決時間(絕對)',
        'Archive search option' => '歸檔查詢選項',
        'Update/Add Ticket Attributes' => '',
        'Set new service' => '設置新服務',
        'Set new Service Level Agreement' => '指定服務水平協議',
        'Set new priority' => '指定優先級',
        'Set new queue' => '指定隊列',
        'Set new state' => '指定狀態',
        'Pending date' => '掛起時間',
        'Set new agent' => '指定服務人員',
        'new owner' => '指定所有者',
        'new responsible' => '指定負責人',
        'Set new ticket lock' => '工單鎖定',
        'New customer user' => '',
        'New customer ID' => '指定用戶ID',
        'New title' => '指定稱謂',
        'New type' => '指定類型',
        'New Dynamic Field Values' => '新的動態字段值',
        'Archive selected tickets' => '歸檔選中的工單',
        'Add Note' => '添加備註',
        'Time units' => '時間',
        'Execute Ticket Commands' => '',
        'Send agent/customer notifications on changes' => '給服務人員/用戶發送通知',
        'CMD' => '命令',
        'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' =>
            '將執行這個命令, 第一個参數是工單 編號，第二個参數是工單的標識符.',
        'Delete tickets' => '刪除工單',
        'Warning: All affected tickets will be removed from the database and cannot be restored!' =>
            '警告：所有影響的工單從數據庫刪除，將無法恢復！',
        'Execute Custom Module' => '執行客戶化模塊',
        'Module' => '模塊',
        'Param %s key' => '参數 %s key',
        'Param %s value' => '参數 %s value',
        'Save Changes' => '保存更改',
        'Tag Reference' => '',
        'In the note section, you can use the following tags' => '',
        'Attributes of the current customer user data' => '',
        'Attributes of the ticket data' => '',
        'Ticket dynamic fields internal key values' => '',
        'Example note' => '',
        'Results' => '結果',
        '%s Tickets affected! What do you want to do?' => '%s 個工單將被影響！您確定要這麼做?',
        'Warning: You used the DELETE option. All deleted tickets will be lost!' =>
            '警告：您選擇了"刪除"指令。所有刪除的工單數據將無法恢復。',
        'Warning: There are %s tickets affected but only %s may be modified during one job execution!' =>
            '',
        'Edit job' => '編輯任務',
        'Run job' => '執行任務',
        'Affected Tickets' => '受影響的工單',
        'Age' => '總時長',

        # Template: AdminGenericInterfaceDebugger
        'GenericInterface Debugger for Web Service %s' => 'Web服務%s的通用接口調試器',
        'You are here' => '',
        'Web Services' => 'Web服務',
        'Debugger' => '調試器',
        'Go back to web service' => '返回到Web服務',
        'Clear' => '刪除',
        'Do you really want to clear the debug log of this web service?' =>
            '您確定要刪除該Web服務的調試日誌嗎？',
        'Request List' => '請求列表',
        'Time' => '時間',
        'Remote IP' => '遠程IP',
        'Loading' => '連載',
        'Select a single request to see its details.' => '選擇一個請求，以便查看其詳細信息。',
        'Filter by type' => '按類型過濾',
        'Filter from' => '按日期過濾(從)',
        'Filter to' => '按日期過濾(至)',
        'Filter by remote IP' => '按遠程IP過濾',
        'Limit' => '限制',
        'Refresh' => '刷新',
        'Request Details' => '請求詳細信息',

        # Template: AdminGenericInterfaceInvokerDefault
        'Add new Invoker to Web Service %s' => '為Web服務%s添加新的調用程序',
        'Change Invoker %s of Web Service %s' => '修改調用程序%s(Web服務%s)',
        'Add new invoker' => '添加新的調用程序',
        'Change invoker %s' => '修改調用程序%s',
        'Do you really want to delete this invoker?' => '您確定要刪除這個調用程序嗎？',
        'All configuration data will be lost.' => '所有配置數據將丢失。',
        'Invoker Details' => '調用程序詳情',
        'The name is typically used to call up an operation of a remote web service.' =>
            '這個名字通常用於調用遠程web服務的一個操作',
        'Please provide a unique name for this web service invoker.' => '請為這個Web服務調用程序提供一個唯一的名稱。',
        'Invoker backend' => '調用程序後端',
        'This OTRS invoker backend module will be called to prepare the data to be sent to the remote system, and to process its response data.' =>
            '這個OTRS調用程序後端模塊被調用後，負責準備需要發送給遠程系統的數據，並處理它的響應數據。',
        'Mapping for outgoing request data' => '映射出站請求數據',
        'Configure' => '配置',
        'The data from the invoker of OTRS will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '這個映射將對OTRS調用程序輸出的數據進行處理，將它轉換為遠程系統所期待的數據。',
        'Mapping for incoming response data' => '映射入站請求數據',
        'The response data will be processed by this mapping, to transform it to the kind of data the invoker of OTRS expects.' =>
            '這個映射將對響應數據進行處理，將它轉換為OTRS調用程序所期待的數據。',
        'Asynchronous' => '異步的',
        'This invoker will be triggered by the configured events.' => '配置事件將觸發這個調用程序。',
        'Asynchronous event triggers are handled by the OTRS Scheduler Daemon in background (recommended).' =>
            '',
        'Synchronous event triggers would be processed directly during the web request.' =>
            '同步事件觸發則是在web請求期間直接處理的。',
        'Save and continue' => '保存並繼續',

        # Template: AdminGenericInterfaceMappingSimple
        'GenericInterface Mapping Simple for Web Service %s' => 'Web服務%s的通用接口映射簡單',
        'Go back to' => '返回到',
        'Mapping Simple' => '映射簡單',
        'Default rule for unmapped keys' => '未映射鍵的默認規則',
        'This rule will apply for all keys with no mapping rule.' => '這個規則將應用於所有沒有映射規則的鍵。',
        'Default rule for unmapped values' => '未映射值的默認規則',
        'This rule will apply for all values with no mapping rule.' => '這個規則將應用於所有沒有映射規則的值。',
        'New key map' => '新的鍵映射',
        'Add key mapping' => '添加鍵映射',
        'Mapping for Key ' => '',
        'Remove key mapping' => '刪除鍵映射',
        'Key mapping' => '鍵映射',
        'Map key' => '映射鍵',
        'matching the' => '將匹配的',
        'to new key' => '映射到新鍵',
        'Value mapping' => '值映射',
        'Map value' => '映射值',
        'to new value' => '映射到新值',
        'Remove value mapping' => '刪除值映射',
        'New value map' => '新的值映射',
        'Add value mapping' => '添加值映射',
        'Do you really want to delete this key mapping?' => '您確定要刪除這個鍵映射嗎？',

        # Template: AdminGenericInterfaceMappingXSLT
        'GenericInterface Mapping XSLT for Web Service %s' => '',
        'Mapping XML' => '',
        'Template' => '模板',
        'The entered data is not a valid XSLT stylesheet.' => '',
        'Insert XSLT stylesheet.' => '',

        # Template: AdminGenericInterfaceOperationDefault
        'Add new Operation to Web Service %s' => '為Web服務%s添加新的操作',
        'Change Operation %s of Web Service %s' => '修改操作%s(Web服務%s)',
        'Add new operation' => '添加新的操作',
        'Change operation %s' => '修改操作%s',
        'Do you really want to delete this operation?' => '您確定要刪除這個操作嗎？',
        'Operation Details' => '操作詳情',
        'The name is typically used to call up this web service operation from a remote system.' =>
            '這個名稱通常用於從一個遠程系統調用這個web服務操作。',
        'Please provide a unique name for this web service.' => '請為這個Web服務提供一個唯一的名稱。',
        'Mapping for incoming request data' => '映射傳入請求數據',
        'The request data will be processed by this mapping, to transform it to the kind of data OTRS expects.' =>
            '這個映射將對請求數據進行處理，將它轉換為OTRS所期待的數據。',
        'Operation backend' => '操作後端',
        'This OTRS operation backend module will be called internally to process the request, generating data for the response.' =>
            '這個OTRS操作後端模塊將被調用，以便處理請求、為響應生成數據。',
        'Mapping for outgoing response data' => '映射出站響應數據',
        'The response data will be processed by this mapping, to transform it to the kind of data the remote system expects.' =>
            '這個映射將對響應數據進行處理，以便將它轉換成遠程系統所期待的數據。',

        # Template: AdminGenericInterfaceTransportHTTPREST
        'GenericInterface Transport HTTP::REST for Web Service %s' => '',
        'Network Transport' => '',
        'Properties' => '屬性',
        'Route mapping for Operation' => '',
        'Define the route that should get mapped to this operation. Variables marked by a \':\' will get mapped to the entered name and passed along with the others to the mapping. (e.g. /Ticket/:TicketID).' =>
            '',
        'Valid request methods for Operation' => '',
        'Limit this Operation to specific request methods. If no method is selected all requests will be accepted.' =>
            '',
        'Maximum message length' => '消息的最大長度',
        'This field should be an integer number.' => '這個字段值應該是一個整數。',
        'Here you can specify the maximum size (in bytes) of REST messages that OTRS will process.' =>
            '',
        'Send Keep-Alive' => '',
        'This configuration defines if incoming connections should get closed or kept alive.' =>
            '',
        'Host' => '主機',
        'Remote host URL for the REST requests.' => '',
        'e.g https://www.otrs.com:10745/api/v1.0 (without trailing backslash)' =>
            '',
        'Controller mapping for Invoker' => '',
        'The controller that the invoker should send requests to. Variables marked by a \':\' will get replaced by the data value and passed along with the request. (e.g. /Ticket/:TicketID?UserLogin=:UserLogin&Password=:Password).' =>
            '',
        'Valid request command for Invoker' => '',
        'A specific HTTP command to use for the requests with this Invoker (optional).' =>
            '',
        'Default command' => '',
        'The default HTTP command to use for the requests.' => '',
        'Authentication' => '驗証',
        'The authentication mechanism to access the remote system.' => '訪問遠程系統的認証機制。',
        'A "-" value means no authentication.' => '"-"意味着沒有認証。',
        'User' => '用戶',
        'The user name to be used to access the remote system.' => '用於訪問遠程系統的用戶名。',
        'Password' => '密碼',
        'The password for the privileged user.' => '特權用戶的密碼。',
        'Use SSL Options' => '啟用SSL選項',
        'Show or hide SSL options to connect to the remote system.' => '顯示或隱藏用來連接遠程系統SSL選項。',
        'Certificate File' => '証書文件',
        'The full path and name of the SSL certificate file.' => '',
        'e.g. /opt/otrs/var/certificates/REST/ssl.crt' => '',
        'Certificate Password File' => '証書密碼文件',
        'The full path and name of the SSL key file.' => '',
        'e.g. /opt/otrs/var/certificates/REST/ssl.key' => '',
        'Certification Authority (CA) File' => '認証機構(CA)文件',
        'The full path and name of the certification authority certificate file that validates the SSL certificate.' =>
            '',
        'e.g. /opt/otrs/var/certificates/REST/CA/ca.file' => '',

        # Template: AdminGenericInterfaceTransportHTTPSOAP
        'GenericInterface Transport HTTP::SOAP for Web Service %s' => 'Web服務%s的通用接口傳輸HTTP::SOAP',
        'Endpoint' => '端點',
        'URI to indicate a specific location for accessing a service.' =>
            'URI用來表示訪問服務的一個特定的位置。',
        'e.g. http://local.otrs.com:8000/Webservice/Example' => '',
        'Namespace' => '命名空間',
        'URI to give SOAP methods a context, reducing ambiguities.' => '為SOAP方法指定URI(通用資源標識符), 以便消除二義性。',
        'e.g urn:otrs-com:soap:functions or http://www.otrs.com/GenericInterface/actions' =>
            '',
        'Request name scheme' => '',
        'Select how SOAP request function wrapper should be constructed.' =>
            '',
        '\'FunctionName\' is used as example for actual invoker/operation name.' =>
            '',
        '\'FreeText\' is used as example for actual configured value.' =>
            '',
        'Response name free text' => '',
        'Text to be used to as function wrapper name suffix or replacement.' =>
            '',
        'Please consider XML element naming restrictions (e.g. don\'t use \'<\' and \'&\').' =>
            '',
        'Response name scheme' => '',
        'Select how SOAP response function wrapper should be constructed.' =>
            '',
        'Here you can specify the maximum size (in bytes) of SOAP messages that OTRS will process.' =>
            '在這裡您可以指定OTRS能夠處理的SOAP消息的最大長度(以字節為單位)。',
        'Encoding' => '編碼',
        'The character encoding for the SOAP message contents.' => 'SOAP消息内容的字符編碼',
        'e.g utf-8, latin1, iso-8859-1, cp1250, Etc.' => '',
        'SOAPAction' => 'SOAP動作',
        'Set to "Yes" to send a filled SOAPAction header.' => '設置"Yes"時，發送填寫了的SOAP動作頭。',
        'Set to "No" to send an empty SOAPAction header.' => '設置"No"時，發送空白的SOAP動作頭。',
        'SOAPAction separator' => 'SOAP動作分隔符',
        'Character to use as separator between name space and SOAP method.' =>
            '作為名稱空間和SOAP方法分隔符的字符。',
        'Usually .Net web services uses a "/" as separator.' => '通常.Net的Web服務使用"/"作為分隔符。',
        'Proxy Server' => '代理服務器',
        'URI of a proxy server to be used (if needed).' => '代理服務器的URI(如果使用代理)。',
        'e.g. http://proxy_hostname:8080' => '',
        'Proxy User' => '代理用戶',
        'The user name to be used to access the proxy server.' => '訪問代理服務器的用戶名。',
        'Proxy Password' => '代理密碼',
        'The password for the proxy user.' => '代理用戶的密碼。',
        'The full path and name of the SSL certificate file (must be in .p12 format).' =>
            'SSL証書文件的完整路徑和名稱(必須採用p12格式)。',
        'e.g. /opt/otrs/var/certificates/SOAP/certificate.p12' => '',
        'The password to open the SSL certificate.' => '訪問SSL証書的密碼',
        'The full path and name of the certification authority certificate file that validates SSL certificate.' =>
            '用來驗証SSL証書的認証機構証書文件的完整路徑和名稱。',
        'e.g. /opt/otrs/var/certificates/SOAP/CA/ca.pem' => '',
        'Certification Authority (CA) Directory' => '認証機構(CA)目錄',
        'The full path of the certification authority directory where the CA certificates are stored in the file system.' =>
            '認証機構目錄的完整路徑，文件系統中存儲CA証書存儲地方。',
        'e.g. /opt/otrs/var/certificates/SOAP/CA' => '',
        'Sort options' => '',
        'Add new first level element' => '',
        'Element' => '',
        'Add' => '添加',
        'Outbound sort order for xml fields (structure starting below function name wrapper) - see documentation for SOAP transport.' =>
            '',

        # Template: AdminGenericInterfaceWebservice
        'GenericInterface Web Service Management' => '通用接口Web服務管理',
        'Add web service' => '添加Web服務',
        'Clone web service' => '克隆Web服務',
        'The name must be unique.' => '名稱必須是唯一的。',
        'Clone' => '克隆',
        'Export web service' => '導出Web服務',
        'Import web service' => '導入Web服務',
        'Configuration File' => '配置文件',
        'The file must be a valid web service configuration YAML file.' =>
            '必須是有效的Web服務配置文件(yaml格式)。',
        'Import' => '導入',
        'Configuration history' => '配置歷史',
        'Delete web service' => '刪除Web服務',
        'Do you really want to delete this web service?' => '您確定要刪除這個Web服務嗎？',
        'Example Web Services' => '',
        'Here you can activate best practice example web service that are part of %s. Please note that some additional configuration may be required.' =>
            '',
        'Import example web service' => '',
        'Do you want to benefit from web services created by experts? Upgrade to %s to be able to import some sophisticated example processes.' =>
            '',
        'After you save the configuration you will be redirected again to the edit screen.' =>
            '保存配置文件後，頁面將再次轉至編輯頁面。',
        'If you want to return to overview please click the "Go to overview" button.' =>
            '如果您想返回到概況，請點擊"返回概況"按鈕。',
        'Web Service List' => 'Web服務列表',
        'Remote system' => '遠程系統',
        'Provider transport' => '服務提供方傳輸',
        'Requester transport' => '服務請求方傳輸',
        'Debug threshold' => '調試閥值',
        'In provider mode, OTRS offers web services which are used by remote systems.' =>
            '在提供方模式中，OTRS為遠程系統提供Web服務。',
        'In requester mode, OTRS uses web services of remote systems.' =>
            '在請求方模式中，OTRS使用遠程系統的Web服務。',
        'Network transport' => '網絡傳輸',
        'Operations are individual system functions which remote systems can request.' =>
            '操作是各種不同的系統功能，可供遠程系統請求調用。',
        'Invokers prepare data for a request to a remote web service, and process its response data.' =>
            '調用程序為請求遠程Web服務准備數據，並其響應的數據進行處理。',
        'Controller' => '控制器',
        'Inbound mapping' => '入站映射',
        'Outbound mapping' => '出站映射',
        'Delete this action' => '刪除這個動作',
        'At least one %s has a controller that is either not active or not present, please check the controller registration or delete the %s' =>
            '至少有一個%s的控制器未被激活或根本就不存在，請檢查控制器註冊或刪除這個%s',

        # Template: AdminGenericInterfaceWebserviceHistory
        'GenericInterface Configuration History for Web Service %s' => 'Web服務%s通用接口配置歷史',
        'History' => '歷史',
        'Go back to Web Service' => '返回到Web服務',
        'Here you can view older versions of the current web service\'s configuration, export or even restore them.' =>
            '在這裡，您可以查看當前Web服務配置的舊版本，導出或恢復它們。',
        'Configuration History List' => '配置歷史列表',
        'Version' => '版本',
        'Create time' => '創建時間',
        'Select a single configuration version to see its details.' => '選擇一個配置版本，以便查看它的詳細情況。',
        'Export web service configuration' => '導出Web服務配置',
        'Restore web service configuration' => '導入Web服務配置',
        'Do you really want to restore this version of the web service configuration?' =>
            '您確定要恢復Web服務配置的這個版本嗎？',
        'Your current web service configuration will be overwritten.' => '當前的Web服務配置將被覆蓋',

        # Template: AdminGroup
        'WARNING: When you change the name of the group \'admin\', before making the appropriate changes in the SysConfig, you will be locked out of the administrations panel! If this happens, please rename the group back to admin per SQL statement.' =>
            '警告：當您更改\'管理\'組的名稱時，在SysConfig作出相應的變化之前，您將被管理面板鎖住！如果發生這種情況，請用SQL語句把組名改回到\'admin\'',
        'Group Management' => '組管理',
        'Add group' => '添加組',
        'Filter for log entries' => '',
        'The admin group is to get in the admin area and the stats group to get stats area.' =>
            'admin組允許使用系統管理模塊，stats組允許使用統計模塊。',
        'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...). ' =>
            '若要為不同的服務人員分配不同的訪問權限，應創建新的組。(例如，採購部、支持部、銷售部、...)',
        'It\'s useful for ASP solutions. ' => '這對於ASP解決方案它很有用。',
        'Add Group' => '添加組',
        'Edit Group' => '編輯組',

        # Template: AdminLog
        'System Log' => '系統日誌',
        'Filter for Log Entries' => '',
        'Here you will find log information about your system.' => '查看系統日誌信息。',
        'Hide this message' => '隱藏此消息',
        'Recent Log Entries' => '最近的日誌',
        'Facility' => '設施',
        'Message' => '消息',

        # Template: AdminMailAccount
        'Mail Account Management' => '管理郵件接收地址',
        'Add mail account' => '添加郵件接收地址',
        'Filter for Mail Accounts' => '',
        'Filter for mail accounts' => '',
        'All incoming emails with one account will be dispatched in the selected queue!' =>
            '接收到的郵件將被分派到郵件接收地址所指定的隊列中!',
        'If your account is trusted, the already existing X-OTRS header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' =>
            '如果郵件接收地址被設置為"信任"，OTRS將對郵件信頭中現有的X-OTRS標記執行相應的處理操作 (例如，設置工單優先級)！而PostMaster Filter总是要執行的，與郵件接收地址是否被設置為"信認"無關。',
        'Delete account' => '刪除帳號',
        'Fetch mail' => '查收郵件',
        'Add Mail Account' => '添加郵件帳號',
        'Example: mail.example.com' => '範例：mail.example.com',
        'IMAP Folder' => 'IMAP文件夾',
        'Only modify this if you need to fetch mail from a different folder than INBOX.' =>
            '僅當您打算從其它文件夾(非INBOX)讀取郵件時，才有必要修改此項.',
        'Trusted' => '是否信任',
        'Dispatching' => '分派',
        'Edit Mail Account' => '編輯郵件接收地址',

        # Template: AdminNavigationBar
        'Admin' => '系統管理',
        'Agent Management' => '服務人員管理',
        'Email Settings' => '郵件設置',
        'Queue Settings' => '隊列設置',
        'Ticket Settings' => '工單設置',
        'System Administration' => '系統管理員',
        'Online Admin Manual' => '',

        # Template: AdminNotificationEvent
        'Ticket Notification Management' => '',
        'Add notification' => '添加通知',
        'Export Notifications' => '',
        'Filter for Notifications' => '',
        'Filter for notifications' => '',
        'Here you can upload a configuration file to import Ticket Notifications to your system. The file needs to be in .yml format as exported by the Ticket Notification module.' =>
            '',
        'Overwrite existing notifications?' => '',
        'Upload Notification configuration' => '',
        'Import Notification configuration' => '',
        'Delete this notification' => '刪除通知',
        'Do you really want to delete this notification?' => '',
        'Add Notification' => '添加通知',
        'Edit Notification' => '編輯通知',
        'Show in agent preferences' => '',
        'Agent preferences tooltip' => '',
        'This message will be shown on the agent preferences screen as a tooltip for this notification.' =>
            '',
        'Events' => '事件',
        'Here you can choose which events will trigger this notification. An additional ticket filter can be applied below to only send for ticket with certain criteria.' =>
            '',
        'Ticket Filter' => '工單過濾',
        'Lock' => '鎖定',
        'SLA' => 'SLA',
        'Customer' => '用戶單位',
        'Article Filter' => '信件過濾器',
        'Only for ArticleCreate and ArticleSend event' => '',
        'Article type' => '信件類型',
        'If ArticleCreate or ArticleSend is used as a trigger event, you need to specify an article filter as well. Please select at least one of the article filter fields.' =>
            '',
        'Article sender type' => '',
        'Subject match' => '主題匹配',
        'Body match' => '内容匹配',
        'Include attachments to notification' => '通知包含附件',
        'Recipients' => '接收人',
        'Send to' => '',
        'Send to these agents' => '',
        'Send to all group members' => '',
        'Send to all role members' => '',
        'Send on out of office' => '',
        'Also send if the user is currently out of office.' => '',
        'Once per day' => '',
        'Notify user just once per day about a single ticket using a selected transport.' =>
            '',
        'Notification Methods' => '',
        'These are the possible methods that can be used to send this notification to each of the recipients. Please select at least one method below.' =>
            '',
        'Enable this notification method' => '',
        'Transport' => '',
        'At least one method is needed per notification.' => '',
        'Active by default in agent preferences' => '',
        'This is the default value for assigned recipient agents who didn\'t make a choice for this notification in their preferences yet. If the box is enabled, the notification will be sent to such agents.' =>
            '',
        'This feature is currently not available.' => '',
        'No data found' => '',
        'No notification method found.' => '',
        'Notification Text' => '',
        'This language is not present or enabled on the system. This notification text could be deleted if it is not needed anymore.' =>
            '',
        'Remove Notification Language' => '',
        'Message body' => '',
        'Add new notification language' => '',
        'Notifications are sent to an agent or a customer.' => '發送給服務人員或用戶的通知。',
        'To get the first 20 character of the subject (of the latest agent article).' =>
            '截取主題的前20個字符（最新的服務人員信件）',
        'To get the first 5 lines of the body (of the latest agent article).' =>
            '截取郵件正文内容前5行（最新的服務人員信件）',
        'To get the first 20 character of the subject (of the latest customer article).' =>
            '截取郵件主題的前20個字符（最新的用戶信件）',
        'To get the first 5 lines of the body (of the latest customer article).' =>
            '截取郵件正文内容前5行（最新的用戶信件）',
        'Attributes of the current ticket owner user data' => '',
        'Attributes of the current ticket responsible user data' => '',
        'Attributes of the current agent user who requested this action' =>
            '',
        'Attributes of the recipient user for the notification' => '',
        'Ticket dynamic fields display values, useful for Dropdown and Multiselect fields' =>
            '',
        'Example notification' => '',

        # Template: AdminNotificationEventTransportEmailSettings
        'Additional recipient email addresses' => '',
        'Notification article type' => '信件類型',
        'An article will be created if the notification is sent to the customer or an additional email address.' =>
            '',
        'Email template' => '',
        'Use this template to generate the complete email (only for HTML emails).' =>
            '',
        'Enable email security' => '',
        'Email security level' => '',
        'If signing key/certificate is missing' => '',
        'If encryption key/certificate is missing' => '',

        # Template: AdminOTRSBusinessInstalled
        'Manage %s' => '',
        'Downgrade to OTRS Free' => '',
        'Read documentation' => '',
        '%s makes contact regularly with cloud.otrs.com to check on available updates and the validity of the underlying contract.' =>
            '',
        'Unauthorized Usage Detected' => '',
        'This system uses the %s without a proper license! Please make contact with %s to renew or activate your contract!' =>
            '',
        '%s not Correctly Installed' => '',
        'Your %s is not correctly installed. Please reinstall it with the button below.' =>
            '',
        'Reinstall %s' => '',
        'Your %s is not correctly installed, and there is also an update available.' =>
            '',
        'You can either reinstall your current version or perform an update with the buttons below (update recommended).' =>
            '',
        'Update %s' => '',
        '%s Not Yet Available' => '',
        '%s will be available soon.' => '',
        '%s Update Available' => '',
        'An update for your %s is available! Please update at your earliest!' =>
            '',
        '%s Correctly Deployed' => '',
        'Congratulations, your %s is correctly installed and up to date!' =>
            '',

        # Template: AdminOTRSBusinessNotInstalled
        '%s will be available soon. Please check again in a few days.' =>
            '',
        'Please have a look at %s for more information.' => '',
        'Your OTRS Free is the base for all future actions. Please register first before you continue with the upgrade process of %s!' =>
            '',
        'Before you can benefit from %s, please contact %s to get your %s contract.' =>
            '',
        'Connection to cloud.otrs.com via HTTPS couldn\'t be established. Please make sure that your OTRS can connect to cloud.otrs.com via port 443.' =>
            '',
        'With your existing contract you can only use a small part of the %s.' =>
            '',
        'If you would like to take full advantage of the %s get your contract upgraded now! Contact %s.' =>
            '',

        # Template: AdminOTRSBusinessUninstall
        'Cancel downgrade and go back' => '',
        'Go to OTRS Package Manager' => '',
        'Sorry, but currently you can\'t downgrade due to the following packages which depend on %s:' =>
            '',
        'Vendor' => '提供者',
        'Please uninstall the packages first using the package manager and try again.' =>
            '',
        'You are about to downgrade to OTRS Free and will lose the following features and all data related to these:' =>
            '',
        'Chat' => '',
        'Report Generator' => '',
        'Timeline view in ticket zoom' => '',
        'DynamicField ContactWithData' => '',
        'DynamicField Database' => '',
        'SLA Selection Dialog' => '',
        'Ticket Attachment View' => '',
        'The %s skin' => '',

        # Template: AdminPGP
        'PGP Management' => 'PGP管理',
        'PGP support is disabled' => '',
        'To be able to use PGP in OTRS, you have to enable it first.' => '',
        'Enable PGP support' => '',
        'Faulty PGP configuration' => '',
        'PGP support is enabled, but the relevant configuration contains errors. Please check the configuration using the button below.' =>
            '',
        'Configure it here!' => '',
        'Check PGP configuration' => '',
        'Add PGP key' => '添加PGP密鑰',
        'In this way you can directly edit the keyring configured in SysConfig.' =>
            '通過此模塊可以直接編輯在SysConfig中配置的密鑰環。',
        'Introduction to PGP' => 'PGP介紹',
        'Result' => '結果',
        'Status' => '狀態',
        'Identifier' => '標識符',
        'Bit' => '位',
        'Fingerprint' => '指紋',
        'Expires' => '過期',
        'Delete this key' => '刪除密鑰',
        'Add PGP Key' => '添加PGP密鑰',
        'PGP key' => 'PGP密鑰',

        # Template: AdminPackageManager
        'Package Manager' => '軟件包管理',
        'Uninstall Package' => '',
        'Do you really want to uninstall this package?' => '是否確認卸載該軟件包?',
        'Uninstall package' => '卸載軟件包',
        'Reinstall package' => '重新安裝軟件包',
        'Do you really want to reinstall this package? Any manual changes will be lost.' =>
            '您確定要重新安裝該軟包嗎? 所有該模塊的手工設置將丢失.',
        'Continue' => '繼續',
        'Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '請確認您的數據庫能夠接收大於%sMB的數據包（目前能夠接收的最大數據包為%sMB）。為了避免程序報錯，請調整數據庫max_allowed_packet参數。',
        'Install' => '安裝',
        'Install Package' => '安裝軟件包',
        'Update repository information' => '更新軟件倉庫信息',
        'Cloud services are currently disabled.' => '',
        'OTRS Verify™ can not continue!' => '',
        'Enable cloud services' => '',
        'Online Repository' => '在綫軟件倉庫',
        'Action' => '操作',
        'Module documentation' => '模塊文檔',
        'Upgrade' => '升級',
        'Local Repository' => '本地軟件倉庫',
        'This package is verified by OTRSverify (tm)' => '此軟件包已通過OTRSverify(tm)的驗証',
        'Uninstall' => '卸載',
        'Package not correctly deployed! Please reinstall the package.' =>
            '軟件包未正確安裝！請重新安裝軟件包。',
        'Reinstall' => '重新安裝',
        'Features for %s Customers Only' => '',
        'With %s, you can benefit from the following optional features. Please make contact with %s if you need more information.' =>
            '',
        'Download package' => '下載該軟件包',
        'Rebuild package' => '重新編譯',
        'Metadata' => '元數據',
        'Change Log' => '更新記錄',
        'Date' => '日期',
        'List of Files' => '文件清單',
        'Permission' => '權限',
        'Download' => '下載',
        'Download file from package!' => '從軟件包中下載這個文件',
        'Required' => '必需的',
        'Size' => '大小',
        'PrimaryKey' => '關鍵的Key',
        'AutoIncrement' => '自動遞增',
        'SQL' => 'SQL',
        'File Differences for File %s' => '',

        # Template: AdminPerformanceLog
        'Performance Log' => '性能日誌',
        'This feature is enabled!' => '該功能已啟用',
        'Just use this feature if you want to log each request.' => '如果想詳細記錄每個請求, 您可以使用該功能.',
        'Activating this feature might affect your system performance!' =>
            '啟動該功能可能影響您的系統性能',
        'Disable it here!' => '關閉該功能',
        'Logfile too large!' => '日誌文件過大',
        'The logfile is too large, you need to reset it' => '日誌文件太大，請重新初始化。',
        'Reset' => '重置',
        'Overview' => '概況',
        'Range' => '範圍',
        'last' => '最後',
        'Interface' => '界面',
        'Requests' => '請求',
        'Min Response' => '最快回應',
        'Max Response' => '最慢回應',
        'Average Response' => '平均回應',
        'Period' => '時長',
        'minutes' => '分鐘',
        'Min' => '最小',
        'Max' => '最大',
        'Average' => '平均',

        # Template: AdminPostMasterFilter
        'PostMaster Filter Management' => '郵件過濾器管理',
        'Add filter' => '添加過濾器',
        'Filter for Postmaster Filters' => '',
        'Filter for postmaster filters' => '',
        'To dispatch or filter incoming emails based on email headers. Matching using Regular Expressions is also possible.' =>
            '基於郵件頭標記的分派或過濾。可以使用正則表達式進行匹配。',
        'If you want to match only the email address, use EMAILADDRESS:info@example.com in From, To or Cc.' =>
            '如果您只想匹配某個郵件地址，可以在From、To或Cc中使用EMAILADDRESS:info@example.com這樣的郵件格式。',
        'If you use Regular Expressions, you also can use the matched value in () as [***] in the \'Set\' action.' =>
            '如果您使用了正則表達式，您可以取出()中匹配的值，再將它寫入OTRS標記中(需採用[***]這種格式。)',
        'You can also use \'named captures\' ((?<name>)) and use the names in the \'Set\' action ([**\name**]). (e.g. Regexp: Server: (?<server>\w+), Set action [**\server**]). A matched EMAILADDRESS has the name \'email\'.' =>
            '',
        'Delete this filter' => '刪除此過濾器',
        'Add PostMaster Filter' => '添加郵件過濾器',
        'Edit PostMaster Filter' => '編輯郵件過濾器',
        'The name is required.' => '過濾器名稱是必需項。',
        'Filter Condition' => '過濾條件',
        'AND Condition' => '與條件',
        'Check email header' => '',
        'Negate' => '求反',
        'Look for value' => '',
        'The field needs to be a valid regular expression or a literal word.' =>
            '該欄位需使用有效的正則表達式或文字。',
        'Set Email Headers' => '設置郵件頭',
        'Set email header' => '',
        'Set value' => '',
        'The field needs to be a literal word.' => '該字段需要輸入文字。',
        'Header' => '信息頭',

        # Template: AdminPriority
        'Priority Management' => '優先級管理',
        'Add priority' => '添加優先級',
        'Filter for Priorities' => '',
        'Filter for priorities' => '',
        'Add Priority' => '添加優先級',
        'Edit Priority' => '編輯優先級',

        # Template: AdminProcessManagement
        'Process Management' => '流程管理',
        'Filter for Processes' => '過濾流程',
        'Filter' => '過濾器',
        'Create New Process' => '創建新的流程',
        'Deploy All Processes' => '',
        'Here you can upload a configuration file to import a process to your system. The file needs to be in .yml format as exported by process management module.' =>
            '您可以上傳流程配置文件，以便將流程配置導入至您的系統中。流程配置文件採用.yml格式，它可以從流程管理模塊中導出。',
        'Overwrite existing entities' => '',
        'Upload process configuration' => '上傳流程配置',
        'Import process configuration' => '導入流程配置',
        'Example Processes' => '',
        'Here you can activate best practice example processes that are part of %s. Please note that some additional configuration may be required.' =>
            '',
        'Import example process' => '',
        'Do you want to benefit from processes created by experts? Upgrade to %s to be able to import some sophisticated example processes.' =>
            '',
        'To create a new Process you can either import a Process that was exported from another system or create a complete new one.' =>
            '為了創建新的流程，您可以導入流程配置文件或從新創建它。',
        'Changes to the Processes here only affect the behavior of the system, if you synchronize the Process data. By synchronizing the Processes, the newly made changes will be written to the Configuration.' =>
            '對流程所做的一切修改僅保存在數據庫中。只有執行同步操作後，才會生成或重新生成流程配置文件。',
        'Processes' => '流程',
        'Process name' => '流程名稱',
        'Print' => '打印',
        'Export Process Configuration' => '導出流程配置',
        'Copy Process' => '複製流程',

        # Template: AdminProcessManagementActivity
        'Cancel & close' => '',
        'Go Back' => '返回',
        'Please note, that changing this activity will affect the following processes' =>
            '請注意，修改這個環節將影響以下流程',
        'Activity' => '環節',
        'Activity Name' => '環節名稱',
        'Activity Dialogs' => '環節操作',
        'You can assign Activity Dialogs to this Activity by dragging the elements with the mouse from the left list to the right list.' =>
            '通過鼠標將左側列表中的元素拖放至右側，您可以為這個環節指派環節操作。',
        'Ordering the elements within the list is also possible by drag \'n\' drop.' =>
            '利用鼠標拖放動作還可以對元素進行排序。',
        'Filter available Activity Dialogs' => '過濾可選的環節操作',
        'Available Activity Dialogs' => '可選的環節操作',
        'Name: %s, EntityID: %s' => '',
        'Edit' => '編輯',
        'Create New Activity Dialog' => '創建新環節操作',
        'Assigned Activity Dialogs' => '指派的環節操作',

        # Template: AdminProcessManagementActivityDialog
        'Please note that changing this activity dialog will affect the following activities' =>
            '請注意，修改這個環節操作將影響以下環節',
        'Please note that customer users will not be able to see or use the following fields: Owner, Responsible, Lock, PendingTime and CustomerID.' =>
            '請注意，用戶並不能看到或對以下字段時行操作：Owner, Responsible, Lock, PendingTime and CustomerID.',
        'The Queue field can only be used by customers when creating a new ticket.' =>
            '',
        'Activity Dialog' => '環節操作',
        'Activity dialog Name' => '環節操作名稱',
        'Available in' => '有效界面',
        'Description (short)' => '描述(簡短)',
        'Description (long)' => '描述(詳細)',
        'The selected permission does not exist.' => '選擇的權限不存在',
        'Required Lock' => '需要鎖定',
        'The selected required lock does not exist.' => '',
        'Submit Advice Text' => '提交建議文本',
        'Submit Button Text' => '提交按鈕文本',
        'Fields' => '字段',
        'You can assign Fields to this Activity Dialog by dragging the elements with the mouse from the left list to the right list.' =>
            '通過鼠標將左側列表中的元素拖放至右側，您可以為這個環節操作指派字段。',
        'Filter available fields' => '過濾可選的字段',
        'Available Fields' => '可選的字段',
        'Name: %s' => '',
        'Assigned Fields' => '指排的字段',
        'ArticleType' => '信件類型',
        'Display' => '顯示',

        # Template: AdminProcessManagementPath
        'Path' => '路徑',
        'Edit this transition' => '編輯這個轉向',
        'Transition Actions' => '轉向動作',
        'You can assign Transition Actions to this Transition by dragging the elements with the mouse from the left list to the right list.' =>
            '通過鼠標將左側列表中的元素拖放至右側，您可以為這個轉向指派轉向動作。',
        'Filter available Transition Actions' => '過濾可選的轉向動作',
        'Available Transition Actions' => '可選的轉向動作',
        'Create New Transition Action' => '創建新的轉向動作',
        'Assigned Transition Actions' => '指派的轉向動作',

        # Template: AdminProcessManagementProcessAccordion
        'Activities' => '環節',
        'Filter Activities...' => '過濾環節...',
        'Create New Activity' => '創建新的環節',
        'Filter Activity Dialogs...' => '過濾環節操作...',
        'Transitions' => '轉向',
        'Filter Transitions...' => '過濾轉向...',
        'Create New Transition' => '創建新的轉向',
        'Filter Transition Actions...' => '過濾轉向操作...',

        # Template: AdminProcessManagementProcessEdit
        'Edit Process' => '編輯流程',
        'Print process information' => '打印流程信息',
        'Delete Process' => '刪除流程',
        'Delete Inactive Process' => '刪除非活動的流程',
        'Available Process Elements' => '可選的流程元素',
        'The Elements listed above in this sidebar can be moved to the canvas area on the right by using drag\'n\'drop.' =>
            '通過鼠標拖放動作，可以將左側欄目上方所列的元素放置在右側的畫布中。',
        'You can place Activities on the canvas area to assign this Activity to the Process.' =>
            '可能將環節拖放至畫布中，以便為流程指派環節。',
        'To assign an Activity Dialog to an Activity drop the Activity Dialog element from this sidebar over the Activity placed in the canvas area.' =>
            '為了給環節指派環節操作，需要將左側的環節操作拖放至畫布中的環節上。',
        'You can start a connection between to Activities by dropping the Transition element over the Start Activity of the connection. After that you can move the loose end of the arrow to the End Activity.' =>
            '為了實現環節之間的轉向，需要將左側的轉向拖放至畫布中並將它放至在開始環節上，然後再將轉向箭頭拖放至結束環節上。',
        'Actions can be assigned to a Transition by dropping the Action Element onto the label of a Transition.' =>
            '為了給轉向指派轉向動作，需要將左側轉向動作拖放至轉向標簽上。',
        'Edit Process Information' => '編輯流程信息',
        'Process Name' => '流程名稱',
        'The selected state does not exist.' => '選擇的狀態不存在',
        'Add and Edit Activities, Activity Dialogs and Transitions' => '添加並編輯環節、環節操作和轉向',
        'Show EntityIDs' => '顯示實體編號',
        'Extend the width of the Canvas' => '擴展畫布的寬度',
        'Extend the height of the Canvas' => '擴展畫布的高度',
        'Remove the Activity from this Process' => '從這個流程中刪除該環節',
        'Edit this Activity' => '編輯該環節',
        'Save settings' => '保存設置',
        'Save Activities, Activity Dialogs and Transitions' => '保存環節、環節操作和轉向',
        'Do you really want to delete this Process?' => '您確定要刪除這個流程嗎？',
        'Do you really want to delete this Activity?' => '您確定要刪除這個環節嗎？',
        'Do you really want to delete this Activity Dialog?' => '您確定要刪除這個環節操作嗎？',
        'Do you really want to delete this Transition?' => '您確定要刪除這個轉向嗎？',
        'Do you really want to delete this Transition Action?' => '您確定要刪除這個轉向動作嗎？',
        'Do you really want to remove this activity from the canvas? This can only be undone by leaving this screen without saving.' =>
            '您確定要從畫布中刪除這個環節嗎？不保存並退出此窗口可撤銷刪除操作。',
        'Do you really want to remove this transition from the canvas? This can only be undone by leaving this screen without saving.' =>
            '您確定要從畫布中刪除這個轉向嗎？不保存並退出此窗口可撤銷刪除操作。',

        # Template: AdminProcessManagementProcessNew
        'In this screen, you can create a new process. In order to make the new process available to users, please make sure to set its state to \'Active\' and synchronize after completing your work.' =>
            '在這裡，您可以創建新的流程。為了使新流程生效，請務必將流程的狀態設置為“激活”，將在完成配置工作後執行同步操作。',

        # Template: AdminProcessManagementProcessPrint
        'Start Activity' => '開始環節',
        'Contains %s dialog(s)' => '包含%s操作',
        'Assigned dialogs' => '指派操作',
        'Activities are not being used in this process.' => '該流程未使用環節',
        'Assigned fields' => '指派字段',
        'Activity dialogs are not being used in this process.' => '該流程未使用環節操作',
        'Condition linking' => '條件鏈接',
        'Conditions' => '條件',
        'Condition' => '條件',
        'Transitions are not being used in this process.' => '該流程未使用轉向',
        'Module name' => '模塊名稱',
        'Transition actions are not being used in this process.' => '該流程未使用轉向動作',

        # Template: AdminProcessManagementTransition
        'Please note that changing this transition will affect the following processes' =>
            '請注意，修改這個轉向將影響以下流程。',
        'Transition' => '轉向',
        'Transition Name' => '轉向名稱',
        'Type of Linking between Conditions' => '條件之間的邏輯關系',
        'Remove this Condition' => '刪除這個條件',
        'Type of Linking' => '鏈接類型',
        'Add a new Field' => '添加新的字段',
        'Remove this Field' => '刪除這個字段',
        'And can\'t be repeated on the same condition.' => '',
        'Add New Condition' => '添加新的條件',

        # Template: AdminProcessManagementTransitionAction
        'Please note that changing this transition action will affect the following processes' =>
            '請注意，修改這個轉向動作將影響以下流程。',
        'Transition Action' => '轉向動作',
        'Transition Action Name' => '轉向動作名稱',
        'Transition Action Module' => '轉向動作模塊',
        'Config Parameters' => '配置参數',
        'Add a new Parameter' => '添加新的参數',
        'Remove this Parameter' => '刪除這個参數',

        # Template: AdminQueue
        'Manage Queues' => '隊列管理',
        'Add queue' => '添加隊列',
        'Filter for Queues' => '過濾隊列',
        'Filter for queues' => '',
        'Group' => '組',
        'Add Queue' => '添加隊列',
        'Edit Queue' => '編輯隊列',
        'A queue with this name already exists!' => '',
        'Sub-queue of' => '子隊列',
        'Unlock timeout' => '超時解鎖',
        '0 = no unlock' => '永不解鎖',
        'hours' => '小時',
        'Only business hours are counted.' => '只計算上班時間',
        'If an agent locks a ticket and does not close it before the unlock timeout has passed, the ticket will unlock and will become available for other agents.' =>
            '如果工單被鎖定且在鎖定超時之前未被關閉，則該工單將被解鎖，以便其他服務人員處理該工單.',
        'Notify by' => '超時觸發通知',
        '0 = no escalation' => '0 = 不升級  ',
        'If there is not added a customer contact, either email-external or phone, to a new ticket before the time defined here expires, the ticket is escalated.' =>
            '如果在此所定義的時間之前，服務人員沒有對新工單添加任何信件(無論是郵件-外部或電話)，該工單將升級.',
        'If there is an article added, such as a follow-up via email or the customer portal, the escalation update time is reset. If there is no customer contact, either email-external or phone, added to a ticket before the time defined here expires, the ticket is escalated.' =>
            '如果有新的信件，例如用戶通過門戶或郵件發送跟進信件，則對升級更新時間進行復位. 如果在此所定義的時間之前，服務人員沒有對新工單添加任何信件，無論是郵件-外部或電話，該工單將升級.',
        'If the ticket is not set to closed before the time defined here expires, the ticket is escalated.' =>
            '如果在此所定義的時間之前，工單未被關閉，該工單將升級.',
        'Follow up Option' => '跟進選項',
        'Specifies if follow up to closed tickets would re-open the ticket, be rejected or lead to a new ticket.' =>
            '如果用戶在工單關閉後發送跟進信件，您是允許、拒絕、還是創建新工單?',
        'Ticket lock after a follow up' => '跟進後自動鎖定工單',
        'If a ticket is closed and the customer sends a follow up the ticket will be locked to the old owner.' =>
            '如果用戶在工單關閉後發送跟進信件，則將該工單鎖定給以前的所有者.',
        'System address' => '系統郵件地址',
        'Will be the sender address of this queue for email answers.' => '回復郵件的發送地址',
        'Default sign key' => '默認回復簽名',
        'Salutation' => '回復抬頭',
        'The salutation for email answers.' => '回復郵件中的抬頭',
        'Signature' => '回復簽名',
        'The signature for email answers.' => '回復郵件中的簽名',
        'Calendar' => '日曆',

        # Template: AdminQueueAutoResponse
        'Manage Queue-Auto Response Relations' => '管理隊列的自動回復',
        'This filter allow you to show queues without auto responses' => '',
        'Queues without auto responses' => '',
        'This filter allow you to show all queues' => '',
        'Show all queues' => '',
        'Auto Responses' => '自動回復',
        'Change Auto Response Relations for Queue' => '設置隊列的自動回復',

        # Template: AdminQueueTemplates
        'Manage Template-Queue Relations' => '管理模板與隊列的對應關系',
        'Filter for Templates' => '過濾模板',
        'Templates' => '模板',
        'Queues' => '隊列',
        'Change Queue Relations for Template' => '為模板設置隊列',
        'Change Template Relations for Queue' => '為隊列設置模板',

        # Template: AdminRegistration
        'System Registration Management' => '系統註冊管理',
        'Edit details' => '',
        'Show transmitted data' => '',
        'Deregister system' => '取消系統註冊',
        'Overview of registered systems' => '註冊系統概述',
        'This system is registered with OTRS Group.' => '本系統由OTRS集團註冊。',
        'System type' => '系統類型',
        'Unique ID' => '唯一ID',
        'Last communication with registration server' => '與註冊服務器上一次的通訊',
        'System Registration not Possible' => '',
        'Please note that you can\'t register your system if OTRS Daemon is not running correctly!' =>
            '',
        'Instructions' => '',
        'System Deregistration not Possible' => '',
        'Please note that you can\'t deregister your system if you\'re using the %s or having a valid service contract.' =>
            '',
        'OTRS-ID Login' => 'OTRS-ID登陸',
        'Read more' => '閱讀全部',
        'You need to log in with your OTRS-ID to register your system.' =>
            '為了註冊系統，需要您先使用OTRS-ID進行登陸。',
        'Your OTRS-ID is the email address you used to sign up on the OTRS.com webpage.' =>
            'OTRS-ID是您的一個郵件地址，用於在OTRS.com網頁進行註冊和登陸。',
        'Data Protection' => '',
        'What are the advantages of system registration?' => '系統註冊有什麼好處?',
        'You will receive updates about relevant security releases.' => '您將及時收到有關安全版本的更新信息。',
        'With your system registration we can improve our services for you, because we have all relevant information available.' =>
            '有助於我們改善服務，因為我們從您處獲得了必要的相關信息。',
        'This is only the beginning!' => '這僅僅是開始！',
        'We will inform you about our new services and offerings soon.' =>
            '我們會向您發布更多服務和產品。',
        'Can I use OTRS without being registered?' => '如果不進行系統註冊，我還可以使用OTRS嗎?',
        'System registration is optional.' => '系統註冊是可選的。',
        'You can download and use OTRS without being registered.' => '不進行註冊，您仍然可以下載和使用OTRS',
        'Is it possible to deregister?' => '可以取消註冊嗎？',
        'You can deregister at any time.' => '您可以隨時取消系統註冊',
        'Which data is transfered when registering?' => '註冊後，哪些數據會被上傳?',
        'A registered system sends the following data to OTRS Group:' => '註冊過的系統會將以下數據上傳給OTRS集團：',
        'Fully Qualified Domain Name (FQDN), OTRS version, Database, Operating System and Perl version.' =>
            '域名(FQDN)、OTRS版本、數據庫、操作系統和Perl版本。',
        'Why do I have to provide a description for my system?' => '為什麼需要我提供有關註冊系統的描述?',
        'The description of the system is optional.' => '註冊系統的描述是可選的。',
        'The description and system type you specify help you to identify and manage the details of your registered systems.' =>
            '註冊系統描述和類型有助於您識别和管理系統的細節。',
        'How often does my OTRS system send updates?' => '我的OTRS系統上傳數據的頻度?',
        'Your system will send updates to the registration server at regular intervals.' =>
            '您的系統將定期向註冊服務器發送更新。',
        'Typically this would be around once every three days.' => '通常這將是大约每3天1次。',
        'In case you would have further questions we would be glad to answer them.' =>
            '如果您還有其它問題，我們非常願意答復您。',
        'Please visit our' => '請訪問我們的',
        'portal' => '門戶',
        'and file a request.' => '並提出請求。',
        'If you deregister your system, you will lose these benefits:' =>
            '',
        'You need to log in with your OTRS-ID to deregister your system.' =>
            '',
        'OTRS-ID' => '',
        'You don\'t have an OTRS-ID yet?' => '還沒有OTRS-ID嗎？',
        'Sign up now' => '現在註冊',
        'Forgot your password?' => '忘記密碼了嗎？',
        'Retrieve a new one' => '獲取新的密碼',
        'Next' => '下一步',
        'This data will be frequently transferred to OTRS Group when you register this system.' =>
            '註冊本系統後，這個數據會經常傳送給OTRS Group',
        'Attribute' => '屬性',
        'FQDN' => '',
        'OTRS Version' => 'OTRS版本',
        'Database' => '數據庫',
        'Operating System' => '操作系統',
        'Perl Version' => 'Perl版本',
        'Optional description of this system.' => '這個系統可選的描述。',
        'Register' => '註冊',
        'Deregister System' => '取消系統註冊',
        'Continuing with this step will deregister the system from OTRS Group.' =>
            '',
        'Deregister' => '取消註冊',
        'You can modify registration settings here.' => '',
        'Overview of Transmitted Data' => '',
        'There is no data regularly sent from your system to %s.' => '',
        'The following data is sent at minimum every 3 days from your system to %s.' =>
            '',
        'The data will be transferred in JSON format via a secure https connection.' =>
            '',
        'System Registration Data' => '',
        'Support Data' => '',

        # Template: AdminRole
        'Role Management' => '角色管理',
        'Add role' => '添加角色',
        'Filter for Roles' => '過濾角色',
        'Filter for roles' => '',
        'Create a role and put groups in it. Then add the role to the users.' =>
            '創建一個角色並將組加入角色,然後將角色赋給用戶.',
        'There are no roles defined. Please use the \'Add\' button to create a new role.' =>
            '有沒有角色定義. 請使用 \'添加\' 按鈕來創建一個新的角色',
        'Add Role' => '添加角色',
        'Edit Role' => '編輯角色',

        # Template: AdminRoleGroup
        'Manage Role-Group Relations' => '管理角色的組權限',
        'Roles' => '角色',
        'Select the role:group permissions.' => '選擇角色:組權限。',
        'If nothing is selected, then there are no permissions in this group (tickets will not be available for the role).' =>
            '如果沒有選擇，就不會具有任何權限 (任何工單都看不見)',
        'Change Role Relations for Group' => '選擇此組具有的角色權限',
        'Change Group Relations for Role' => '選擇此角色具有的組權限',
        'Toggle %s permission for all' => '切換%s權限給全部',
        'move_into' => '',
        'Permissions to move tickets into this group/queue.' => '對於組/隊列中的工單具有 \'轉移隊列\' 的權限',
        'create' => '',
        'Permissions to create tickets in this group/queue.' => '對於組/隊列具有 \'創建工單\' 的權限',
        'note' => '備註',
        'Permissions to add notes to tickets in this group/queue.' => '對於組/隊列具有 \'添加備註\' 的權限',
        'owner' => '',
        'Permissions to change the owner of tickets in this group/queue.' =>
            '對於組/隊列具有 \'所有者\' 的權限',
        'priority' => '',
        'Permissions to change the ticket priority in this group/queue.' =>
            '對於組/隊列中的工單具有 \'更改優先級\' 的權限',

        # Template: AdminRoleUser
        'Manage Agent-Role Relations' => '定義服務人員的角色',
        'Add agent' => '添加服務人員',
        'Filter for Agents' => '查找服務人員',
        'Agents' => '服務人員',
        'Manage Role-Agent Relations' => '管理服務人員的角色',
        'Change Role Relations for Agent' => '選擇此服務人員的角色',
        'Change Agent Relations for Role' => '選擇此角色的服務人員',

        # Template: AdminSLA
        'SLA Management' => 'SLA管理',
        'Add SLA' => '添加SLA',
        'Filter for SLAs' => '',
        'Edit SLA' => '編輯SLA',
        'Please write only numbers!' => '僅可填寫數字！',

        # Template: AdminSMIME
        'S/MIME Management' => 'S/MIME管理',
        'SMIME support is disabled' => '',
        'To be able to use SMIME in OTRS, you have to enable it first.' =>
            '',
        'Enable SMIME support' => '',
        'Faulty SMIME configuration' => '',
        'SMIME support is enabled, but the relevant configuration contains errors. Please check the configuration using the button below.' =>
            '',
        'Check SMIME configuration' => '',
        'Add certificate' => '添加証書',
        'Add private key' => '添加私匙',
        'Filter for Certificates' => '',
        'Filter for S/MIME certs' => '',
        'To show certificate details click on a certificate icon.' => '',
        'To manage private certificate relations click on a private key icon.' =>
            '',
        'Here you can add relations to your private certificate, these will be embedded to the S/MIME signature every time you use this certificate to sign an email.' =>
            '',
        'See also' => '参見',
        'In this way you can directly edit the certification and private keys in file system.' =>
            '這樣您能夠直接編輯文件系統中的証書和私匙。',
        'Hash' => 'Hash',
        'Create' => '創建',
        'Handle related certificates' => '處理關聯的証書',
        'Read certificate' => '讀取証書',
        'Delete this certificate' => '刪除這個証書',
        'Add Certificate' => '添加証書',
        'File' => '文件',
        'Add Private Key' => '添加個人私鑰',
        'Secret' => '機密',
        'Submit' => '提交',
        'Related Certificates for' => '關聯証書',
        'Delete this relation' => '刪除這個關聯',
        'Available Certificates' => '可選的証書',
        'Relate this certificate' => '關聯這個証書',

        # Template: AdminSMIMECertRead
        'S/MIME Certificate' => 'S/MIME証書',
        'Close' => '關閉',
        'Certificate Details' => '',

        # Template: AdminSalutation
        'Salutation Management' => '回復抬頭管理',
        'Add salutation' => '添加回復抬頭',
        'Filter for Salutations' => '',
        'Filter for salutations' => '',
        'Add Salutation' => '添加回復抬頭',
        'Edit Salutation' => '編輯回復抬頭',
        'e. g.' => '例如',
        'Example salutation' => '這裡有一個範例',

        # Template: AdminSecureMode
        'Secure Mode Needs to be Enabled!' => '',
        'Secure mode will (normally) be set after the initial installation is completed.' =>
            '在初始安裝結束後，安全模式通常將被設置',
        'If secure mode is not activated, activate it via SysConfig because your application is already running.' =>
            '系統已啟用，請通過SysConfig啟用安全模式。',

        # Template: AdminSelectBox
        'SQL Box' => 'SQL查詢窗口',
        'Filter for Results' => '',
        'Filter for results' => '',
        'Here you can enter SQL to send it directly to the application database. It is not possible to change the content of the tables, only select queries are allowed.' =>
            '',
        'Here you can enter SQL to send it directly to the application database.' =>
            '這裡您可以輸入並運行數據庫SQL的命令。',
        'Options' => '選項',
        'Only select queries are allowed.' => '',
        'The syntax of your SQL query has a mistake. Please check it.' =>
            'SQL查詢的語法有一個錯誤，請核對。',
        'There is at least one parameter missing for the binding. Please check it.' =>
            '至少有一個参數丢失，請核對。',
        'Result format' => '結果格式',
        'Run Query' => '執行查詢',
        'Query is executed.' => '',

        # Template: AdminService
        'Service Management' => '服務管理',
        'Add service' => '添加服務',
        'Filter for services' => '',
        'Add Service' => '添加服務',
        'Edit Service' => '編輯服務',
        'Sub-service of' => '子服務',

        # Template: AdminSession
        'Session Management' => '會話管理',
        'All sessions' => '所有會話',
        'Agent sessions' => '服務人員會話',
        'Customer sessions' => '用戶會話',
        'Unique agents' => '實際服務人員',
        'Unique customers' => '實際在綫用戶',
        'Kill all sessions' => '终止所有會話',
        'Kill this session' => '终止該會話',
        'Filter for Sessions' => '',
        'Filter for sessions' => '',
        'Session' => '會話',
        'Kill' => '终止',
        'Detail View for SessionID' => '該會話的詳細記錄',

        # Template: AdminSignature
        'Signature Management' => '回復簽名管理',
        'Add signature' => '添加回復簽名',
        'Filter for Signatures' => '',
        'Filter for signatures' => '',
        'Add Signature' => '添加回復簽名',
        'Edit Signature' => '編輯回復簽名',
        'Example signature' => '簽名範例',

        # Template: AdminState
        'State Management' => '工單狀態管理',
        'Add state' => '添加工單狀態',
        'Filter for States' => '',
        'Filter for states' => '',
        'Attention' => '注意',
        'Please also update the states in SysConfig where needed.' => '請同時在SysConfig中需要地方更新這些狀態。',
        'Add State' => '添加工單狀態',
        'Edit State' => '編輯工單狀態',
        'State type' => '工單狀態類型',

        # Template: AdminSupportDataCollector
        'Sending support data to OTRS Group is not possible!' => '',
        'Enable Cloud Services' => '',
        'This data is sent to OTRS Group on a regular basis. To stop sending this data please update your system registration.' =>
            '',
        'You can manually trigger the Support Data sending by pressing this button:' =>
            '',
        'Send Update' => '',
        'Sending Update...' => '',
        'Support Data information was successfully sent.' => '',
        'Was not possible to send Support Data information.' => '',
        'Update Result' => '',
        'Currently this data is only shown in this system.' => '',
        'A support bundle (including: system registration information, support data, a list of installed packages and all locally modified source code files) can be generated by pressing this button:' =>
            '',
        'Generate Support Bundle' => '',
        'Generating...' => '',
        'It was not possible to generate the Support Bundle.' => '',
        'Generate Result' => '',
        'Support Bundle' => '',
        'The mail could not be sent' => '',
        'The Support Bundle has been Generated' => '',
        'Please choose one of the following options.' => '',
        'Send by Email' => '',
        'The support bundle is too large to send it by email, this option has been disabled.' =>
            '',
        'The email address for this user is invalid, this option has been disabled.' =>
            '',
        'Sending' => '發件人',
        'The support bundle will be sent to OTRS Group via email automatically.' =>
            '',
        'Download File' => '',
        'A file containing the support bundle will be downloaded to the local system. Please save the file and send it to the OTRS Group, using an alternate method.' =>
            '',
        'Error: Support data could not be collected (%s).' => '',
        'Details' => '詳情',

        # Template: AdminSysConfig
        'SysConfig' => '系統配置',
        'Navigate by searching in %s settings' => '從%s個配置参數中進行搜索',
        'Navigate by selecting config groups' => '按配置参數分組進行瀏覽',
        'Download all system config changes' => '下載所有配置(不包括默認配置)',
        'Export settings' => '導出設置',
        'Load SysConfig settings from file' => '從指定文件加載系統配置',
        'Import settings' => '導入設置',
        'Import Settings' => '導入設置',
        'Please enter a search term to look for settings.' => '請輸入關鍵詞來查找相關的設置.',
        'Subgroup' => '子組',
        'Elements' => '元素',

        # Template: AdminSysConfigEdit
        'Edit Config Settings in %s → %s' => '',
        'This setting is read only.' => '',
        'This config item is only available in a higher config level!' =>
            '該配置項只在高級配置可用！',
        'Reset this setting' => '重置設定',
        'Error: this file could not be found.' => '錯誤：文件不存在。',
        'Error: this directory could not be found.' => '錯誤：目錄不存在。',
        'Error: an invalid value was entered.' => '錯誤：輸入無效的值。',
        'Content' => '值',
        'Remove this entry' => '刪除該條目',
        'Add entry' => '添加條目',
        'Remove entry' => '刪除條目',
        'Add new entry' => '添加新條目',
        'Delete this entry' => '刪除該條目',
        'Create new entry' => '創建新條目',
        'New group' => '新的組',
        'Group ro' => '組 ro',
        'Readonly group' => '只讀權限組',
        'New group ro' => '新的只讀權限組',
        'Loader' => '加載',
        'File to load for this frontend module' => '文件裝載界面模塊',
        'New Loader File' => '新加載文件',
        'NavBarName' => '導航欄名稱',
        'NavBar' => '導航欄',
        'Link' => '鏈接',
        'LinkOption' => '鏈接選項',
        'Block' => '塊',
        'AccessKey' => '進鑰',
        'Add NavBar entry' => '添加導航欄條目',
        'NavBar module' => '',
        'Year' => '年',
        'Month' => '月',
        'Day' => '日',
        'Error' => '錯誤',
        'Invalid year' => '無效的年份',
        'Invalid month' => '無效的月份',
        'Invalid day' => '無效的日期',
        'Show more' => '顯示更多',

        # Template: AdminSystemAddress
        'System Email Addresses Management' => '郵件發送地址管理',
        'Add system address' => '添加郵件發送地址',
        'Filter for System Addresses' => '',
        'Filter for system addresses' => '',
        'All incoming email with this address in To or Cc will be dispatched to the selected queue.' =>
            '對於所有接收到的郵件，如果在其郵件中的To或Cc中出現了這些郵件發送地址，則將接收到的郵件分派給郵件發送地址所指定的隊列中。',
        'Email address' => '郵件發送地址',
        'Display name' => '名稱',
        'Add System Email Address' => '添加郵件發送地址',
        'Edit System Email Address' => '編輯郵件發送地址',
        'The display name and email address will be shown on mail you send.' =>
            '郵件地址和名稱將在郵件中顯示。',

        # Template: AdminSystemMaintenance
        'System Maintenance Management' => '',
        'Schedule New System Maintenance' => '',
        'Filter for System Maintenances' => '',
        'Filter for system maintenances' => '',
        'Schedule a system maintenance period for announcing the Agents and Customers the system is down for a time period.' =>
            '',
        'Some time before this system maintenance starts the users will receive a notification on each screen announcing about this fact.' =>
            '',
        'Start date' => '',
        'Stop date' => '',
        'Delete System Maintenance' => '',
        'Do you really want to delete this scheduled system maintenance?' =>
            '',

        # Template: AdminSystemMaintenanceEdit
        'Edit System Maintenance %s' => '',
        'Edit System Maintenance information' => '',
        'Date invalid!' => '日期無效!',
        'Login message' => '',
        'Show login message' => '',
        'Notify message' => '',
        'Manage Sessions' => '',
        'All Sessions' => '',
        'Agent Sessions' => '',
        'Customer Sessions' => '',
        'Kill all Sessions, except for your own' => '',

        # Template: AdminTemplate
        'Manage Templates' => '模板管理',
        'Add template' => '添加模板',
        'A template is a default text which helps your agents to write faster tickets, answers or forwards.' =>
            '模板中的正文幫助服務人員快速始建、回復或轉發工單。',
        'Don\'t forget to add new templates to queues.' => '别忘了將新模板指派給隊列',
        'Attachments' => '附件',
        'Add Template' => '添加模板',
        'Edit Template' => '編輯模板',
        'A standard template with this name already exists!' => '',
        'Create type templates only supports this smart tags' => '',
        'Example template' => '模板舉例',
        'The current ticket state is' => '當前工單狀態是',
        'Your email address is' => '您的郵件地址是',

        # Template: AdminTemplateAttachment
        'Manage Templates <-> Attachments Relations' => '管理模板與附件之間的關係',
        'Change Template Relations for Attachment' => '為附件指定模板',
        'Change Attachment Relations for Template' => '為模板指定附件',
        'Toggle active for all' => '切換激活全部',
        'Link %s to selected %s' => '鏈接%s到選中的%s',

        # Template: AdminType
        'Type Management' => '工單類型管理',
        'Add ticket type' => '添加工單類型',
        'Filter for Types' => '',
        'Filter for types' => '',
        'Add Type' => '添加工單類型',
        'Edit Type' => '編輯工單類型',
        'A type with this name already exists!' => '',

        # Template: AdminUser
        'Agents will be needed to handle tickets.' => '處理工單是服務人員職責。',
        'Don\'t forget to add a new agent to groups and/or roles!' => '别忘了為服務人員指派組或角色權限！',
        'Please enter a search term to look for agents.' => '請輸入一個搜索條件以便查找服務人員。',
        'Last login' => '最後一次登錄',
        'Switch to agent' => '切換服務人員',
        'Add Agent' => '添加服務人員',
        'Edit Agent' => '編輯服務人員',
        'Title or salutation' => '',
        'Firstname' => '名',
        'Lastname' => '姓',
        'A user with this username already exists!' => '',
        'Will be auto-generated if left empty.' => '如果為空，將自動生成密碼。',
        'Mobile' => '手機',
        'On' => '開',
        'Off' => '關',
        'Start' => '開始',
        'End' => '結束',

        # Template: AdminUserGroup
        'Manage Agent-Group Relations' => '定義服務人員的組權限',
        'Change Group Relations for Agent' => '選擇此服務人員具備的組權限',
        'Change Agent Relations for Group' => '為此組選擇服務人員的權限',

        # Template: AgentBook
        'Address Book' => '地址簿',
        'Search for a customer' => '查找用戶',
        'Bcc' => '暗送',
        'Add email address %s to the To field' => '將郵件地址%s添加至To字段',
        'Add email address %s to the Cc field' => '將郵件地址%s添加至Cc字段',
        'Add email address %s to the Bcc field' => '將郵件地址%s添加至Bcc字段',
        'Apply' => '應用',

        # Template: AgentCustomerInformationCenter
        'Customer Information Center' => '用戶信息中心',

        # Template: AgentCustomerInformationCenterSearch
        'Customer User' => '用戶',

        # Template: AgentCustomerTableView
        'Note: Customer is invalid!' => '注意：用戶是無效的！',

        # Template: AgentDaemonInfo
        'The OTRS Daemon is a daemon process that performs asynchronous tasks, e.g. ticket escalation triggering, email sending, etc.' =>
            '',
        'A running OTRS Daemon is mandatory for correct system operation.' =>
            '',
        'Starting the OTRS Daemon' => '',
        'Make sure that the file \'%s\' exists (without .dist extension). This cron job will check every 5 minutes if the OTRS Daemon is running and start it if needed.' =>
            '',
        'Execute \'%s start\' to make sure the cron jobs of the \'otrs\' user are active.' =>
            '',
        'After 5 minutes, check that the OTRS Daemon is running in the system (\'bin/otrs.Daemon.pl status\').' =>
            '',

        # Template: AgentDashboard
        'Dashboard' => '儀表板',

        # Template: AgentDashboardCalendarOverview
        'in' => '之内',
        'none' => '無',

        # Template: AgentDashboardCommon
        'Close this widget' => '',
        'more' => '更多',
        'Available Columns' => '可選擇的字段',
        'Visible Columns (order by drag & drop)' => '顯示的字段(通過拖拽可調整順序)',

        # Template: AgentDashboardCustomerIDStatus
        'Escalated tickets' => '升級的工單',
        'Open tickets' => '處理中的工單',
        'Closed tickets' => '已關閉的工單',
        'All tickets' => '所有工單',
        'Archived tickets' => '歸檔的工單',

        # Template: AgentDashboardCustomerUserList
        'Customer login' => '用戶登錄',
        'Customer information' => '用戶信息',
        'Open' => '處理中',
        'Closed' => '已關閉',
        'Phone ticket' => '電話工單',
        'Email ticket' => '郵件工單',
        'Start Chat' => '',
        '%s open ticket(s) of %s' => '',
        '%s closed ticket(s) of %s' => '',
        'New phone ticket from %s' => '',
        'New email ticket to %s' => '',
        'Start chat' => '',

        # Template: AgentDashboardProductNotify
        '%s %s is available!' => '%s %s is 可用！',
        'Please update now.' => '請現在更新',
        'Release Note' => '版本說明',
        'Level' => '級别',

        # Template: AgentDashboardRSSOverview
        'Posted %s ago.' => '發布於%s之前',

        # Template: AgentDashboardStats
        'The configuration for this statistic widget contains errors, please review your settings.' =>
            '',
        'Download as SVG file' => '',
        'Download as PNG file' => '',
        'Download as CSV file' => '',
        'Download as Excel file' => '',
        'Download as PDF file' => '',
        'Please select a valid graph output format in the configuration of this widget.' =>
            '',
        'The content of this statistic is being prepared for you, please be patient.' =>
            '正在為您處理統計數據，請耐心等待。',
        'This statistic can currently not be used because its configuration needs to be corrected by the statistics administrator.' =>
            '',

        # Template: AgentDashboardTicketGeneric
        'My locked tickets' => '我鎖定的工單',
        'My watched tickets' => '我訂閱的工單',
        'My responsibilities' => '我負責的工單',
        'Tickets in My Queues' => '我隊列中的工單',
        'Tickets in My Services' => '',
        'Service Time' => '服務時間',
        'Remove active filters for this widget.' => '',

        # Template: AgentDashboardTicketQueueOverview
        'Totals' => '合計',

        # Template: AgentDashboardUserOnline
        'out of office' => '不在辦公室',
        'Selected agent is not available for chat' => '',

        # Template: AgentDashboardUserOutOfOffice
        'until' => '直至',

        # Template: AgentHTMLReferencePageLayout
        'The ticket has been locked' => '工單已鎖定',
        'Undo & close' => '',

        # Template: AgentInfo
        'Info' => '詳情',
        'To accept some news, a license or some changes.' => '接收新聞、許可証或者一些動態信息。',

        # Template: AgentLinkObject
        'Link Object: %s' => '連接對象: %s',
        'go to link delete screen' => '轉至刪除鏈接窗口',
        'Select Target Object' => '選擇目標對象',
        'Link Object' => '鏈接對象',
        'with' => '和',
        'Please enter at least one search value or * to find anything.' =>
            '請至少輸入一個搜索條件或 *。',
        'Unlink Object: %s' => '取消連接對象 %s',
        'go to link add screen' => '轉至添加鏈接窗口',

        # Template: AgentPreferences
        'Edit your preferences' => '編輯個人設置',
        'Did you know? You can help translating OTRS at %s.' => '',

        # Template: AgentSpelling
        'Spell Checker' => '拼寫檢查',
        'Spelling Error(s)' => '',
        'Language' => '語言',
        'Line' => '行',
        'Word' => '字',
        'replace with' => '替換',
        'Change' => '修改',
        'Ignore' => '忽略',
        'Apply these changes' => '應用這些更改',
        'Done' => '確認',

        # Template: AgentStatisticsAdd
        'Statistics » Add' => '',
        'Add New Statistic' => '',
        'Dynamic Matrix' => '',
        'Tabular reporting data where each cell contains a singular data point (e. g. the number of tickets).' =>
            '',
        'Dynamic List' => '',
        'Tabular reporting data where each row contains data of one entity (e. g. a ticket).' =>
            '',
        'Static' => '',
        'Complex statistics that cannot be configured and may return non-tabular data.' =>
            '',
        'General Specification' => '',
        'Create Statistic' => '',

        # Template: AgentStatisticsEdit
        'Statistics » Edit %s%s — %s' => '',
        'Run now' => '',
        'Statistics Preview' => '',
        'Save Statistic' => '',

        # Template: AgentStatisticsImport
        'Statistics » Import' => '',
        'Import Statistic Configuration' => '',

        # Template: AgentStatisticsOverview
        'Statistics » Overview' => '',
        'Statistics' => '統計',
        'Run' => '',
        'Edit statistic "%s".' => '',
        'Export statistic "%s"' => '',
        'Export statistic %s' => '',
        'Delete statistic "%s"' => '',
        'Delete statistic %s' => '',
        'Do you really want to delete this statistic?' => '',

        # Template: AgentStatisticsView
        'Statistics » View %s%s — %s' => '',
        'Statistic Information' => '',
        'Created by' => '創建人',
        'Changed by' => '修改人',
        'Sum rows' => '行合計',
        'Sum columns' => '列合計',
        'Show as dashboard widget' => '作為儀表板顯示部件',
        'Cache' => '緩存',
        'This statistic contains configuration errors and can currently not be used.' =>
            '',

        # Template: AgentTicketActionCommon
        'Change Free Text of %s%s' => '',
        'Change Owner of %s%s' => '',
        'Close %s%s' => '',
        'Add Note to %s%s' => '',
        'Set Pending Time for %s%s' => '',
        'Change Priority of %s%s' => '',
        'Change Responsible of %s%s' => '',
        'All fields marked with an asterisk (*) are mandatory.' => '所有带 * 的字段都是強制要求輸入的字段.',
        'Service invalid.' => '服務無效。',
        'New Owner' => '新所有者',
        'Please set a new owner!' => '請指定新的所有者！',
        'New Responsible' => '',
        'Please set a new responsible!' => '',
        'Next state' => '工單狀態',
        'For all pending* states.' => '',
        'Add Article' => '',
        'Create an Article' => '',
        'Inform agents' => '',
        'Inform involved agents' => '',
        'Here you can select additional agents which should receive a notification regarding the new article.' =>
            '',
        'Text will also be received by:' => '',
        'Spell check' => '拼寫檢查',
        'Text Template' => '文本模板',
        'Setting a template will overwrite any text or attachment.' => '',
        'Note type' => '備註類型',
        'Invalid time!' => '無效時間!',

        # Template: AgentTicketBounce
        'Bounce %s%s' => '',
        'Bounce to' => '退回到 ',
        'You need a email address.' => '需要一個郵件地址。',
        'Need a valid email address or don\'t use a local email address.' =>
            '需要一個有效的郵件地址，同時不可以使用本地郵件地址。',
        'Next ticket state' => '工單狀態',
        'Inform sender' => '通知發送者',
        'Send mail' => '發送!',

        # Template: AgentTicketBulk
        'Ticket Bulk Action' => '工單批量處理',
        'Send Email' => '發送郵件',
        'Merge' => '合併',
        'Merge to' => '合併到',
        'Invalid ticket identifier!' => '無效的工單標識符!',
        'Merge to oldest' => '合併至最早提交的工單',
        'Link together' => '相互鏈接',
        'Link to parent' => '鏈接到上一級',
        'Unlock tickets' => '工單解鎖',
        'Execute Bulk Action' => '',

        # Template: AgentTicketCompose
        'Compose Answer for %s%s' => '',
        'This address is registered as system address and cannot be used: %s' =>
            '',
        'Please include at least one recipient' => '請包括至少一個收件人',
        'Remove Ticket Customer' => '刪除工單用戶',
        'Please remove this entry and enter a new one with the correct value.' =>
            '請刪除這個條目並重新輸入一個正確的值。',
        'This address already exists on the address list.' => '地址列表已有這個地址。',
        'Remove Cc' => '刪除Cc',
        'Remove Bcc' => '刪除Bcc',
        'Address book' => '地址簿',
        'Date Invalid!' => '日期無效！',

        # Template: AgentTicketCustomer
        'Change Customer of %s%s' => '',
        'Customer Information' => '用戶信息',

        # Template: AgentTicketEmail
        'Create New Email Ticket' => '創建郵件工單',
        'Example Template' => '',
        'From queue' => '隊列',
        'To customer user' => '選擇用戶',
        'Please include at least one customer user for the ticket.' => '請包括至少一個工單用戶。',
        'Select this customer as the main customer.' => '選擇這個用戶作為主用戶',
        'Remove Ticket Customer User' => '刪除工單用戶',
        'Get all' => '獲取全部',

        # Template: AgentTicketEmailOutbound
        'Outbound Email for %s%s' => '',

        # Template: AgentTicketEscalation
        'Ticket %s: first response time is over (%s/%s)!' => '',
        'Ticket %s: first response time will be over in %s/%s!' => '',
        'Ticket %s: update time is over (%s/%s)!' => '',
        'Ticket %s: update time will be over in %s/%s!' => '',
        'Ticket %s: solution time is over (%s/%s)!' => '',
        'Ticket %s: solution time will be over in %s/%s!' => '',

        # Template: AgentTicketForward
        'Forward %s%s' => '',

        # Template: AgentTicketHistory
        'History of %s%s' => '',
        'History Content' => '歷史内容',
        'Zoom' => '展開',
        'Createtime' => '創建時間',
        'Zoom view' => '缩放視圖',

        # Template: AgentTicketMerge
        'Merge %s%s' => '',
        'Merge Settings' => '',
        'You need to use a ticket number!' => '您需要使用一個工單編號!',
        'A valid ticket number is required.' => '需要有效的工單編號。',
        'Inform Sender' => '',
        'Need a valid email address.' => '需要有效的郵件地址。',

        # Template: AgentTicketMove
        'Move %s%s' => '',
        'New Queue' => '新隊列',
        'Move' => '轉移',

        # Template: AgentTicketOverviewMedium
        'Select all' => '選擇全部',
        'No ticket data found.' => '沒有找到工單數據。',
        'Open / Close ticket action menu' => '',
        'Select this ticket' => '',
        'First Response Time' => '第一響應時間',
        'Update Time' => '更新時間',
        'Solution Time' => '解決時間',
        'Move ticket to a different queue' => '將工單轉移到另一個隊列',
        'Change queue' => '更改隊列',

        # Template: AgentTicketOverviewNavBar
        'Change search options' => '修改搜索選項',
        'Remove active filters for this screen.' => '清除此屏的過濾器',
        'Tickets per page' => '工單數/頁',

        # Template: AgentTicketOverviewSmall
        'Reset overview' => '',
        'Column Filters Form' => '',

        # Template: AgentTicketPhone
        'Split Into New Phone Ticket' => '',
        'Save Chat Into New Phone Ticket' => '',
        'Create New Phone Ticket' => '創建電話工單',
        'Please include at least one customer for the ticket.' => '請包括至少一個工單用戶。',
        'To queue' => '隊列',
        'Chat protocol' => '',
        'The chat will be appended as a separate article.' => '',

        # Template: AgentTicketPhoneCommon
        'Phone Call for %s%s' => '',

        # Template: AgentTicketPlain
        'View Email Plain Text for %s%s' => '',
        'Plain' => '純文本',
        'Download this email' => '下載該郵件',

        # Template: AgentTicketProcess
        'Create New Process Ticket' => '創建流程工單',
        'Process' => '流程',

        # Template: AgentTicketProcessSmall
        'Enroll Ticket into a Process' => '',

        # Template: AgentTicketSearch
        'Search template' => '搜索模板',
        'Create Template' => '創建模板',
        'Create New' => '創建',
        'Profile link' => '按模板搜索',
        'Save changes in template' => '保存變更為模板',
        'Filters in use' => '',
        'Additional filters' => '',
        'Add another attribute' => '增加另一個搜索條件',
        'Output' => '搜索結果顯示為',
        'Fulltext' => '全文',
        'Remove' => '刪除',
        'Searches in the attributes From, To, Cc, Subject and the article body, overriding other attributes with the same name.' =>
            '搜索範圍覆蓋From, To, Cc, 主題和信件.',
        'Customer User Login' => '用戶登錄用戶名',
        'Attachment Name' => '',
        '(e. g. m*file or myfi*)' => '',
        'Created in Queue' => '隊列中創建',
        'Lock state' => '鎖定狀態',
        'Watcher' => '訂閱人',
        'Article Create Time (before/after)' => '信件創建時間(相對)',
        'Article Create Time (between)' => '信件創建時間(絕對)',
        'Ticket Create Time (before/after)' => '工單創建時間(相對)',
        'Ticket Create Time (between)' => '工單創建時間(絕對)',
        'Ticket Change Time (before/after)' => '工單更新時間(相對)',
        'Ticket Change Time (between)' => '工單更新時間(絕對)',
        'Ticket Last Change Time (before/after)' => '',
        'Ticket Last Change Time (between)' => '',
        'Ticket Close Time (before/after)' => '工單關閉時間(相對)',
        'Ticket Close Time (between)' => '工單關閉時間(絕對)',
        'Ticket Escalation Time (before/after)' => '工單升級時間(相對)',
        'Ticket Escalation Time (between)' => '工單升級時間(絕對)',
        'Archive Search' => '歸檔搜索',
        'Run search' => '搜索',

        # Template: AgentTicketZoom
        'Article filter' => '信件過濾器',
        'Article Type' => '信件類别 ',
        'Sender Type' => '發送人類型',
        'Save filter settings as default' => '將過濾器作為缺省設置並保存',
        'Event Type Filter' => '',
        'Event Type' => '',
        'Save as default' => '',
        'Change Queue' => '改變隊列',
        'There are no dialogs available at this point in the process.' =>
            '目前流程中沒有環節操作。',
        'This item has no articles yet.' => '此條目沒有信件。',
        'Ticket Timeline View' => '',
        'Article Overview' => '',
        'Article(s)' => '信件',
        'Page' => '頁',
        'Add Filter' => '添加過濾器',
        'Set' => '設置',
        'Reset Filter' => '重置過濾器',
        'Article' => '信件',
        'View' => '查看',
        'Show one article' => '顯示單一信件',
        'Show all articles' => '顯示所有信件',
        'Show Ticket Timeline View' => '',
        'Unread articles' => '未讀信件',
        'No.' => '編號：',
        'Direction' => '方向',
        'Important' => '重要',
        'Unread Article!' => '未讀信件!',
        'Incoming message' => '接收的信息',
        'Outgoing message' => '發出的信息',
        'Internal message' => '内部信息',
        'Resize' => '調整大小',
        'Mark this article as read' => '',
        'Show Full Text' => '',
        'Full Article Text' => '',
        'No more events found. Please try changing the filter settings.' =>
            '',
        'by' => '由',
        'To open links in the following article, you might need to press Ctrl or Cmd or Shift key while clicking the link (depending on your browser and OS).' =>
            '',
        'Close this message' => '',
        'Article could not be opened! Perhaps it is on another article page?' =>
            '',

        # Template: LinkTable
        'Linked Objects' => '已連接的對象',

        # Template: TicketInformation
        'Archive' => '歸檔',
        'This ticket is archived.' => '該工單已歸檔',
        'Note: Type is invalid!' => '',
        'Locked' => '鎖定狀態',
        'Accounted time' => '所用時間',
        'Pending till' => '掛起至',

        # Template: AttachmentBlocker
        'To protect your privacy, remote content was blocked.' => '為了保護您的隱私,遠程内容被阻擋。',
        'Load blocked content.' => '載入被阻擋的内容。',

        # Template: ChatStartForm
        'First message' => '',

        # Template: CloudServicesDisabled
        'This Feature Requires Cloud Services' => '',
        'You can' => '您可以',
        'go back to the previous page' => '返回上一頁',

        # Template: CustomerError
        'Traceback' => '追溯',

        # Template: CustomerFooter
        'Powered by' => 'Powered by',

        # Template: CustomerLogin
        'JavaScript Not Available' => '沒有啟用 JavaScript',
        'In order to experience OTRS, you\'ll need to enable JavaScript in your browser.' =>
            '要繼續使用 OTRS，請打開瀏覽器的 JavaScript 功能.',
        'Browser Warning' => '提示',
        'The browser you are using is too old.' => '您使用的游覽器太舊了.',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.' =>
            'OTRS 已確認下列的游覽器可正常顯示, 請挑一個您喜歡用的升級之.',
        'Please see the documentation or ask your admin for further information.' =>
            '欲了解更多信息, 請向您的管理詢問或参考相關文檔.',
        'One moment please, you are being redirected...' => '',
        'Login' => '登錄',
        'User name' => '用戶名',
        'Your user name' => '您的用戶名',
        'Your password' => '您的密碼',
        'Forgot password?' => '密碼遺忘?',
        '2 Factor Token' => '',
        'Your 2 Factor Token' => '',
        'Log In' => '登錄',
        'Not yet registered?' => '還未註冊?',
        'Back' => '上一步',
        'Request New Password' => '請求新密碼',
        'Your User Name' => '您的用戶名',
        'A new password will be sent to your email address.' => '新密碼將會發送到您的郵箱中',
        'Create Account' => '創建帳戶',
        'Please fill out this form to receive login credentials.' => '',
        'How we should address you' => '稱謂',
        'Your First Name' => '名字',
        'Your Last Name' => '姓',
        'Your email address (this will become your username)' => '',

        # Template: CustomerNavigationBar
        'Incoming Chat Requests' => '',
        'You have unanswered chat requests' => '',
        'Edit personal preferences' => '編輯個人設置',
        'Preferences' => '首選項',
        'Logout %s %s' => '',

        # Template: CustomerRichTextEditor
        'Split Quote' => '',

        # Template: CustomerTicketMessage
        'Service level agreement' => '服務水平協議',

        # Template: CustomerTicketOverview
        'Welcome!' => '歡迎！',
        'Please click the button below to create your first ticket.' => '請點擊下面的按鈕創建第一個工單。',
        'Create your first ticket' => '創建第一個工單',

        # Template: CustomerTicketSearch
        'Profile' => '搜索條件',
        'e. g. 10*5155 or 105658*' => '例如: 10*5155 或 105658*',
        'Customer ID' => '用戶編號',
        'Fulltext Search in Tickets (e. g. "John*n" or "Will*")' => '',
        'Sender' => '發件人',
        'Recipient' => '收件人',
        'Carbon Copy' => '抄送',
        'e. g. m*file or myfi*' => '',
        'Types' => '類型',
        'Time Restrictions' => '',
        'No time settings' => '',
        'All' => '全部',
        'Specific date' => '',
        'Only tickets created' => '工單創建於',
        'Date range' => '',
        'Only tickets created between' => '工單創建自',
        'Ticket Archive System' => '',
        'Save Search as Template?' => '',
        'Save as Template?' => '保存為模板',
        'Save as Template' => '保存為模板',
        'Template Name' => '模板名稱',
        'Pick a profile name' => '',
        'Output to' => '輸出為',

        # Template: CustomerTicketSearchResultShort
        'of' => '在',
        'Search Results for' => '搜索結果',
        'Remove this Search Term.' => '',

        # Template: CustomerTicketZoom
        'Start a chat from this ticket' => '',
        'Expand article' => '展開信件',
        'Information' => '信息',
        'Next Steps' => '下一',
        'Reply' => '回復',
        'Chat Protocol' => '',

        # Template: CustomerWarning
        'Warning' => '警告',

        # Template: DashboardEventsTicketCalendar
        'Event Information' => '事件信息',
        'Ticket fields' => '工單字段',
        'Dynamic fields' => '動態字段',

        # Template: Error
        'An Error Occurred' => '',
        'Send a bugreport' => '發送一個錯誤報告',
        'Error Details' => '詳細錯誤信息',
        'Expand' => '展開',

        # Template: FooterJS
        'This feature is part of the %s.  Please contact us at %s for an upgrade.' =>
            '',
        'Find out more about the %s' => '',
        'Scale preview content' => '',
        'Open URL in new tab' => '',
        'Close preview' => '',
        'OTRS can\'t provide a preview of this website because it seems as if it didn\'t allow to be embedded.' =>
            '',

        # Template: Header
        'Logout' => '退出',
        'You are logged in as' => '您已登錄為',

        # Template: Installer
        'JavaScript not available' => 'JavaScript沒有啟用',
        'Step %s' => '第 %s 步',
        'License' => '許可証',
        'Database Settings' => '數據庫設置',
        'General Specifications and Mail Settings' => '一般設定和郵件配置',
        'Finish' => '完成',
        'Welcome to %s' => '',
        'Phone' => '電話',
        'Web site' => '網址',

        # Template: InstallerConfigureMail
        'Configure Outbound Mail' => '外發郵件配置',
        'Outbound mail type' => '外發郵件類型',
        'Select outbound mail type.' => '選擇外發郵件類型。',
        'Outbound mail port' => '外發郵件端口',
        'Select outbound mail port.' => '選擇外發郵件端口。',
        'SMTP host' => 'SMTP服務器',
        'SMTP host.' => 'SMTP服務器。',
        'SMTP authentication' => 'SMTP認証',
        'Does your SMTP host need authentication?' => 'SMTP服務器是否需要驗証？',
        'SMTP auth user' => 'SMTP認証用戶名',
        'Username for SMTP auth.' => 'SMTP認証用戶名。',
        'SMTP auth password' => 'SMTP認証密碼',
        'Password for SMTP auth.' => 'SMTP認証密碼。',
        'Configure Inbound Mail' => '接收郵件配置',
        'Inbound mail type' => '接收郵件類型',
        'Select inbound mail type.' => '選擇接收郵件類型。',
        'Inbound mail host' => '接收郵件服務器',
        'Inbound mail host.' => '接收郵件服務器。',
        'Inbound mail user' => '接收郵件用戶名',
        'User for inbound mail.' => '接收郵件用戶名。',
        'Inbound mail password' => '接收郵件密碼',
        'Password for inbound mail.' => '接收郵件密碼',
        'Result of mail configuration check' => '郵件服務器配置檢查結果',
        'Check mail configuration' => '檢查郵件配置',
        'Skip this step' => '跳過這一步',

        # Template: InstallerDBResult
        'Database setup successful!' => '數據庫設置成功！',

        # Template: InstallerDBStart
        'Install Type' => '安裝類型',
        'Create a new database for OTRS' => '為OTRS創建新的數據庫',
        'Use an existing database for OTRS' => '使用現有的數據庫',

        # Template: InstallerDBmssql
        'If you have set a root password for your database, it must be entered here. If not, leave this field empty.' =>
            '如果您的數據庫為root設置了密碼，您必須在這裡輸入；否則，該字段為空。',
        'Database name' => '數據庫名稱',
        'Check database settings' => '測試數據庫設置',
        'Result of database check' => '數據庫檢查結果',
        'Database check successful.' => '數據庫檢查完成.',
        'Database User' => '數據庫用戶',
        'New' => '新建',
        'A new database user with limited permissions will be created for this OTRS system.' =>
            '已經為OTRS系統創建了新的數據庫用戶',
        'Repeat Password' => '重復輸入密碼',
        'Generated password' => '發送自動生成的密碼',

        # Template: InstallerDBmysql
        'Passwords do not match' => '密碼不匹配',

        # Template: InstallerDBoracle
        'SID' => '',
        'Port' => '',

        # Template: InstallerFinish
        'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' =>
            '為了能夠使用OTRS, 您必須以root身份輸入以下行在命令行中(Terminal/Shell).',
        'Restart your webserver' => '請重啟您web服務器.',
        'After doing so your OTRS is up and running.' => '完成後，您可以啟動OTRS系統了.',
        'Start page' => '開始頁面',
        'Your OTRS Team' => '您的OTRS小組.',

        # Template: InstallerLicense
        'Don\'t accept license' => '不同意',
        'Accept license and continue' => '',

        # Template: InstallerSystem
        'SystemID' => '系統ID',
        'The identifier of the system. Each ticket number and each HTTP session ID contain this number.' =>
            '每個工單和HTTP會話ID包含系統標識符。',
        'System FQDN' => '系統全稱域名',
        'Fully qualified domain name of your system.' => '系統FQDN（全稱域名）',
        'AdminEmail' => '管理員地址',
        'Email address of the system administrator.' => '系統管理員郵件地址。',
        'Organization' => '組織',
        'Log' => '日誌',
        'LogModule' => '日誌模塊',
        'Log backend to use.' => '日誌後台使用。',
        'LogFile' => '日誌文件',
        'Webfrontend' => 'Web 前端',
        'Default language' => '默認語言',
        'Default language.' => '默認語言',
        'CheckMXRecord' => '檢查MX記錄',
        'Email addresses that are manually entered are checked against the MX records found in DNS. Don\'t use this option if your DNS is slow or does not resolve public addresses.' =>
            '手動輸入的電子郵件地址將通過DNS服務器驗証MX記錄。如果DNS服務器響應慢或無法提供公網解析，請不要使用此選項。',

        # Template: LinkObject
        'Object#' => '對象#',
        'Add links' => '添加鏈接',
        'Delete links' => '刪除鏈接',

        # Template: Login
        'Lost your password?' => '忘記密碼?',
        'Back to login' => '重新登錄',

        # Template: MobileNotAvailableWidget
        'Feature not Available' => '',
        'Sorry, but this feature of OTRS is currently not available for mobile devices. If you\'d like to use it, you can either switch to desktop mode or use your regular desktop device.' =>
            '',

        # Template: Motd
        'Message of the Day' => '今日消息',
        'This is the message of the day. You can edit this in %s.' => '',

        # Template: NoPermission
        'Insufficient Rights' => '沒有足夠的權限',
        'Back to the previous page' => '返回前一頁',

        # Template: Pagination
        'Show first page' => '首頁',
        'Show previous pages' => '前一頁',
        'Show page %s' => '第 %s 頁',
        'Show next pages' => '後一頁',
        'Show last page' => '尾頁',

        # Template: PictureUpload
        'Need FormID!' => '需要FormID',
        'No file found!' => '找不到文件！',
        'The file is not an image that can be shown inline!' => '此文件是不是一個可以顯示的圖像!',

        # Template: PreferencesNotificationEvent
        'Notification' => '系統通知',
        'No user configurable notifications found.' => '',
        'Receive messages for notification \'%s\' by transport method \'%s\'.' =>
            '',
        'Please note that you can\'t completely disable notifications marked as mandatory.' =>
            '',
        'Sorry, but you can\'t disable all methods for notifications marked as mandatory.' =>
            '',
        'Sorry, but you can\'t disable all methods for this notification.' =>
            '',

        # Template: ActivityDialogHeader
        'Process Information' => '',
        'Dialog' => '',

        # Template: Article
        'Inform Agent' => '通知服務人員',

        # Template: PublicDefault
        'Welcome' => '',
        'This is the default public interface of OTRS! There was no action parameter given.' =>
            '',
        'You could install a custom public module (via the package manager), for example the FAQ module, which has a public interface.' =>
            '',

        # Template: RichTextEditor
        'Remove Quote' => '',

        # Template: GeneralSpecificationsWidget
        'Permissions' => '權限',
        'You can select one or more groups to define access for different agents.' =>
            '可選中一個或多個組以便定義不同服務人員。',
        'Result formats' => '',
        'Time Zone' => '時區',
        'The selected time periods in the statistic are time zone neutral.' =>
            '',
        'Create summation row' => '',
        'Generate an additional row containing sums for all data columns.' =>
            '',
        'Create summation column' => '',
        'Generate an additional column containing sums for all data rows.' =>
            '',
        'Cache results' => '',
        'Stores statistics result data in a cache to be used in subsequent views with the same configuration.' =>
            '',
        'Provide the statistic as a widget that agents can activate in their dashboard.' =>
            '將該統計作為部件顯示在儀表板中.',
        'Please note that enabling the dashboard widget will activate caching for this statistic in the dashboard.' =>
            '',
        'If set to invalid end users can not generate the stat.' => '如果設置為無效，將無法生成統計。',

        # Template: PreviewWidget
        'There are problems in the configuration of this statistic:' => '',
        'You may now configure the X-axis of your statistic.' => '',
        'This statistic does not provide preview data.' => '',
        'Preview format:' => '',
        'Please note that the preview uses random data and does not consider data filters.' =>
            '',
        'Configure X-Axis' => '',
        'X-axis' => 'X軸',
        'Configure Y-Axis' => '',
        'Y-axis' => '',
        'Configure Filter' => '',

        # Template: RestrictionsWidget
        'Please select only one element or turn off the button \'Fixed\'.' =>
            '請只選擇一個元素或使“固定”復選框未被選中。',
        'Absolute period' => '',
        'Between' => '',
        'Relative period' => '',
        'The past complete %s and the current+upcoming complete %s %s' =>
            '',
        'Do not allow changes to this element when the statistic is generated.' =>
            '',

        # Template: StatsParamsWidget
        'Format' => '格式',
        'Exchange Axis' => '轉換軸',
        'Configurable Params of Static Stat' => '',
        'No element selected.' => '沒有被選参數',
        'Scale' => '時間刻度',

        # Template: D3
        'Download SVG' => '',
        'Download PNG' => '',

        # Template: XAxisWidget
        'The selected time period defines the default time frame for this statistic to collect data from.' =>
            '',
        'Defines the time unit that will be used to split the selected time period into reporting data points.' =>
            '',

        # Template: YAxisWidget
        'Please remember that the scale for the Y-axis has to be larger than the scale for the X-axis (e.g. X-axis => Month, Y-Axis => Year).' =>
            '',

        # Template: Test
        'OTRS Test Page' => 'OTRS測試頁',
        'Unlock' => '解鎖',
        'Welcome %s %s' => '',
        'Counter' => '計數器',

        # Template: Warning
        'Go back to the previous page' => '返回前一頁',

        # Perl Module: Kernel/Config/Defaults.pm
        'CustomerIDs' => '單位編號',
        'Fax' => '傳真',
        'Street' => '街道',
        'Zip' => '郵編',
        'City' => '城市',
        'Country' => '國家',
        'Valid' => '有效',
        'Mr.' => '先生',
        'Mrs.' => '女士',
        'View system log messages.' => '查看系統日誌信息',
        'Edit the system configuration settings.' => '編輯系統配置。',
        'Update and extend your system with software packages.' => '更新或安裝系統的軟件包或模塊.',

        # Perl Module: Kernel/Modules/AdminACL.pm
        'ACL information from database is not in sync with the system configuration, please deploy all ACLs.' =>
            '數據庫中的ACL信息與系統配置不一致，請部署所有ACL。',
        'ACLs could not be Imported due to a unknown error, please check OTRS logs for more information' =>
            '',
        'The following ACLs have been added successfully: %s' => '',
        'The following ACLs have been updated successfully: %s' => '',
        'There where errors adding/updating the following ACLs: %s. Please check the log file for more information.' =>
            '',
        'This field is required' => '這個字段是必需的',
        'There was an error creating the ACL' => '',
        'Need ACLID!' => '',
        'Could not get data for ACLID %s' => '',
        'There was an error updating the ACL' => '',
        'There was an error setting the entity sync status.' => '',
        'There was an error synchronizing the ACLs.' => '',
        'ACL %s could not be deleted' => '',
        'There was an error getting data for ACL with ID %s' => '',
        'Please note that ACL restrictions will be ignored for the Superuser account (UserID 1).' =>
            '',
        'Exact match' => '',
        'Negated exact match' => '',
        'Regular expression' => '',
        'Regular expression (ignore case)' => '',
        'Negated regular expression' => '',
        'Negated regular expression (ignore case)' => '',

        # Perl Module: Kernel/Modules/AdminAttachment.pm
        'Attachment updated!' => '附件已更新！',
        'Attachment added!' => '附件已添加！',

        # Perl Module: Kernel/Modules/AdminAutoResponse.pm
        'Response updated!' => '回復已更新！',
        'Response added!' => '回復已添加！',

        # Perl Module: Kernel/Modules/AdminCustomerCompany.pm
        'Customer company updated!' => '用戶單位已更新！',
        'Customer Company %s already exists!' => '',
        'Customer company added!' => '用戶單位已添加！',

        # Perl Module: Kernel/Modules/AdminCustomerUser.pm
        'Customer updated!' => '用戶已更新！',
        'New phone ticket' => '創建電話工單',
        'New email ticket' => '創建郵件工單',
        'Customer %s added' => '用戶%s已添加',

        # Perl Module: Kernel/Modules/AdminDynamicField.pm
        'Fields configuration is not valid' => '',
        'Objects configuration is not valid' => '',
        'Could not reset Dynamic Field order properly, please check the error log for more details.' =>
            '',

        # Perl Module: Kernel/Modules/AdminDynamicFieldCheckbox.pm
        'Undefined subaction.' => '',
        'Need %s' => '',
        'The field does not contain only ASCII letters and numbers.' => '',
        'There is another field with the same name.' => '',
        'The field must be numeric.' => '',
        'Need ValidID' => '',
        'Could not create the new field' => '',
        'Need ID' => '',
        'Could not get data for dynamic field %s' => '',
        'The name for this field should not change.' => '',
        'Could not update the field %s' => '',
        'Currently' => '',
        'Unchecked' => '',
        'Checked' => '',

        # Perl Module: Kernel/Modules/AdminDynamicFieldDateTime.pm
        'No' => '否',
        'Yes' => '是',
        'Prevent entry of dates in the future' => '',
        'Prevent entry of dates in the past' => '',

        # Perl Module: Kernel/Modules/AdminDynamicFieldDropdown.pm
        'This field value is duplicated.' => '',

        # Perl Module: Kernel/Modules/AdminEmail.pm
        'Select at least one recipient.' => '',

        # Perl Module: Kernel/Modules/AdminGenericAgent.pm
        'Time unit' => '時間單位',
        'within the last ...' => '在過去的...',
        'within the next ...' => '在接下來的...',
        'more than ... ago' => '...之前',
        'minute(s)' => '分鐘',
        'hour(s)' => '小時',
        'day(s)' => '天',
        'week(s)' => '星期',
        'month(s)' => '月',
        'year(s)' => '年',
        'Unarchived tickets' => '未歸檔的工單',
        'archive tickets' => '',
        'restore tickets from archive' => '',
        'Need Profile!' => '',
        'Got no values to check.' => '',
        'Please remove the following words because they cannot be used for the ticket selection:' =>
            '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceDebugger.pm
        'Need WebserviceID!' => '',
        'Could not get data for WebserviceID %s' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceInvokerDefault.pm
        'Need InvokerType' => '',
        'Invoker %s is not registered' => '',
        'InvokerType %s is not registered' => '',
        'Need Invoker' => '',
        'Could not determine config for invoker %s' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceMappingSimple.pm
        'Could not get registered configuration for action type %s' => '',
        'Could not get backend for %s %s' => '',
        'Could not update configuration data for WebserviceID %s' => '',
        'Keep (leave unchanged)' => '',
        'Ignore (drop key/value pair)' => '',
        'Map to (use provided value as default)' => '',
        'Exact value(s)' => '',
        'Ignore (drop Value/value pair)' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceMappingXSLT.pm
        'Could not find required library %s' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceOperationDefault.pm
        'Need OperationType' => '',
        'Operation %s is not registered' => '',
        'OperationType %s is not registered' => '',
        'Need Operation' => '',
        'Could not determine config for operation %s' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceTransportHTTPREST.pm
        'Need Subaction!' => '',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebservice.pm
        'There is another web service with the same name.' => '',
        'There was an error updating the web service.' => '',
        'Web service "%s" updated!' => '',
        'There was an error creating the web service.' => '',
        'Web service "%s" created!' => '',
        'Need Name!' => '',
        'Need ExampleWebService!' => '',
        'Could not read %s!' => '',
        'Need a file to import!' => '',
        'The imported file has not valid YAML content! Please check OTRS log for details' =>
            '',
        'Web service "%s" deleted!' => '',
        'OTRS as provider' => 'OTRS作為服務提供方',
        'OTRS as requester' => 'OTRS作為服務請求方',

        # Perl Module: Kernel/Modules/AdminGenericInterfaceWebserviceHistory.pm
        'Got no WebserviceHistoryID!' => '',
        'Could not get history data for WebserviceHistoryID %s' => '',

        # Perl Module: Kernel/Modules/AdminGroup.pm
        'Group updated!' => '組已更新！',

        # Perl Module: Kernel/Modules/AdminMailAccount.pm
        'Mail account added!' => '郵件帳號已添加！',
        'Mail account updated!' => '郵件帳號已更新！',
        'Finished' => '完成',
        'Dispatching by email To: field.' => '按收件人(To:)分派.',
        'Dispatching by selected Queue.' => '按所選隊列分派.',

        # Perl Module: Kernel/Modules/AdminNotificationEvent.pm
        'Notification updated!' => '',
        'Notification added!' => '',
        'There was an error getting data for Notification with ID:%s!' =>
            '',
        'Unknown Notification %s!' => '',
        'There was an error creating the Notification' => '',
        'Notifications could not be Imported due to a unknown error, please check OTRS logs for more information' =>
            '',
        'The following Notifications have been added successfully: %s' =>
            '',
        'The following Notifications have been updated successfully: %s' =>
            '',
        'There where errors adding/updating the following Notifications: %s. Please check the log file for more information.' =>
            '',
        'Agent who owns the ticket' => '',
        'Agent who is responsible for the ticket' => '',
        'All agents watching the ticket' => '',
        'All agents with write permission for the ticket' => '',
        'All agents subscribed to the ticket\'s queue' => '',
        'All agents subscribed to the ticket\'s service' => '',
        'All agents subscribed to both the ticket\'s queue and service' =>
            '',
        'Customer of the ticket' => '',
        'Yes, but require at least one active notification method' => '',

        # Perl Module: Kernel/Modules/AdminOTRSBusiness.pm
        'Your system was successfully upgraded to %s.' => '',
        'There was a problem during the upgrade to %s.' => '',
        '%s was correctly reinstalled.' => '',
        'There was a problem reinstalling %s.' => '',
        'Your %s was successfully updated.' => '',
        'There was a problem during the upgrade of %s.' => '',
        '%s was correctly uninstalled.' => '',
        'There was a problem uninstalling %s.' => '',

        # Perl Module: Kernel/Modules/AdminPGP.pm
        'PGP environment is not working. Please check log for more info!' =>
            '',
        'Need param Key to delete!' => '',
        'Key %s deleted!' => '',
        'Need param Key to download!' => '',

        # Perl Module: Kernel/Modules/AdminPackageManager.pm
        'Sorry, Apache::Reload is needed as PerlModule and PerlInitHandler in Apache config file. See also scripts/apache2-httpd.include.conf. Alternatively, you can use the command line tool bin/otrs.Console.pl to install packages!' =>
            '',
        'No such package!' => '',
        'No such file %s in package!' => '',
        'No such file %s in local file system!' => '',
        'Can\'t read %s!' => '',
        'Package has locally modified files.' => '',
        'Package not verified by the OTRS Group! It is recommended not to use this package.' =>
            '擴展包未經OTRS檢驗！不推薦使用該擴展包.',
        'No packages or no new packages found in selected repository.' =>
            '',
        'Package not verified due a communication issue with verification server!' =>
            '',
        'Can\'t connect to OTRS Feature Add-on list server!' => '',
        'Can\'t get OTRS Feature Add-on list from server!' => '',
        'Can\'t get OTRS Feature Add-on from server!' => '',

        # Perl Module: Kernel/Modules/AdminPostMasterFilter.pm
        'No such filter: %s' => '',

        # Perl Module: Kernel/Modules/AdminPriority.pm
        'Priority updated!' => '優先級已更新!',
        'Priority added!' => '優先級已添加!',

        # Perl Module: Kernel/Modules/AdminProcessManagement.pm
        'Process Management information from database is not in sync with the system configuration, please synchronize all processes.' =>
            '數據庫中的流程管理信息與系統配置不一致，請同步所有流程。',
        'Need ExampleProcesses!' => '',
        'Need ProcessID!' => '',
        'Yes (mandatory)' => '',
        'Unknown Process %s!' => '',
        'There was an error generating a new EntityID for this Process' =>
            '',
        'The StateEntityID for state Inactive does not exists' => '',
        'There was an error creating the Process' => '',
        'There was an error setting the entity sync status for Process entity: %s' =>
            '',
        'Could not get data for ProcessID %s' => '',
        'There was an error updating the Process' => '',
        'Process: %s could not be deleted' => '',
        'There was an error synchronizing the processes.' => '',
        'The %s:%s is still in use' => '',
        'The %s:%s has a different EntityID' => '',
        'Could not delete %s:%s' => '',
        'There was an error setting the entity sync status for %s entity: %s' =>
            '',
        'Could not get %s' => '',
        'Need %s!' => '',
        'Process: %s is not Inactive' => '',

        # Perl Module: Kernel/Modules/AdminProcessManagementActivity.pm
        'There was an error generating a new EntityID for this Activity' =>
            '',
        'There was an error creating the Activity' => '',
        'There was an error setting the entity sync status for Activity entity: %s' =>
            '',
        'Need ActivityID!' => '',
        'Could not get data for ActivityID %s' => '',
        'There was an error updating the Activity' => '',
        'Missing Parameter: Need Activity and ActivityDialog!' => '',
        'Activity not found!' => '',
        'ActivityDialog not found!' => '',
        'ActivityDialog already assigned to Activity. You cannot add an ActivityDialog twice!' =>
            '',
        'Error while saving the Activity to the database!' => '',
        'This subaction is not valid' => '',
        'Edit Activity "%s"' => '',

        # Perl Module: Kernel/Modules/AdminProcessManagementActivityDialog.pm
        'There was an error generating a new EntityID for this ActivityDialog' =>
            '',
        'There was an error creating the ActivityDialog' => '',
        'There was an error setting the entity sync status for ActivityDialog entity: %s' =>
            '',
        'Need ActivityDialogID!' => '',
        'Could not get data for ActivityDialogID %s' => '',
        'There was an error updating the ActivityDialog' => '',
        'Edit Activity Dialog "%s"' => '',
        'Agent Interface' => '',
        'Customer Interface' => '',
        'Agent and Customer Interface' => '',
        'Do not show Field' => '',
        'Show Field' => '',
        'Show Field As Mandatory' => '',
        'note-internal' => ' (備註-内部)',
        'note-external' => ' (備註-外部)',
        'note-report' => ' (備註-報告)',
        'phone' => ' (電話)',
        'fax' => '',
        'sms' => ' (短信)',
        'webrequest' => ' (Web請求)',

        # Perl Module: Kernel/Modules/AdminProcessManagementPath.pm
        'Edit Path' => '',

        # Perl Module: Kernel/Modules/AdminProcessManagementTransition.pm
        'There was an error generating a new EntityID for this Transition' =>
            '',
        'There was an error creating the Transition' => '',
        'There was an error setting the entity sync status for Transition entity: %s' =>
            '',
        'Need TransitionID!' => '',
        'Could not get data for TransitionID %s' => '',
        'There was an error updating the Transition' => '',
        'Edit Transition "%s"' => '',
        'xor' => '',
        'String' => '',
        'Transition validation module' => '',

        # Perl Module: Kernel/Modules/AdminProcessManagementTransitionAction.pm
        'At least one valid config parameter is required.' => '',
        'There was an error generating a new EntityID for this TransitionAction' =>
            '',
        'There was an error creating the TransitionAction' => '',
        'There was an error setting the entity sync status for TransitionAction entity: %s' =>
            '',
        'Need TransitionActionID!' => '',
        'Could not get data for TransitionActionID %s' => '',
        'There was an error updating the TransitionAction' => '',
        'Edit Transition Action "%s"' => '',
        'Error: Not all keys seem to have values or vice versa.' => '',

        # Perl Module: Kernel/Modules/AdminQueue.pm
        'Don\'t use :: in queue name!' => '',
        'Click back and change it!' => '',
        'Queue updated!' => '隊列已更新！',
        '-none-' => '-無-',

        # Perl Module: Kernel/Modules/AdminQueueAutoResponse.pm
        'Queues ( without auto responses )' => '',

        # Perl Module: Kernel/Modules/AdminRole.pm
        'Role updated!' => '角色已更新！',
        'Role added!' => '角色已添加！',

        # Perl Module: Kernel/Modules/AdminSLA.pm
        'Please activate %s first!' => '請首先激活%s！',

        # Perl Module: Kernel/Modules/AdminSMIME.pm
        'S/MIME environment is not working. Please check log for more info!' =>
            '',
        'Need param Filename to delete!' => '',
        'Need param Filename to download!' => '',
        'Needed CertFingerprint and CAFingerprint!' => '',
        'CAFingerprint must be different than CertFingerprint' => '',
        'Relation exists!' => '',
        'Relation added!' => '',
        'Impossible to add relation!' => '',
        'Relation doesn\'t exists' => '',
        'Relation deleted!' => '',
        'Impossible to delete relation!' => '',
        'Certificate %s could not be read!' => '',
        'Needed Fingerprint' => '',

        # Perl Module: Kernel/Modules/AdminSalutation.pm
        'Salutation updated!' => '',
        'Salutation added!' => '',

        # Perl Module: Kernel/Modules/AdminSignature.pm
        'Signature updated!' => '簽名已更新!',
        'Signature added!' => '簽名已添加!',

        # Perl Module: Kernel/Modules/AdminState.pm
        'State updated!' => '狀態已更新！',
        'State added!' => '狀態已添加！',

        # Perl Module: Kernel/Modules/AdminSupportDataCollector.pm
        'File %s could not be read!' => '',

        # Perl Module: Kernel/Modules/AdminSysConfig.pm
        'Import not allowed!' => '',
        'Need File!' => '',
        'Can\'t write ConfigItem!' => '',

        # Perl Module: Kernel/Modules/AdminSystemAddress.pm
        'System e-mail address updated!' => '系統郵件地址已更新！',
        'System e-mail address added!' => '系統郵件地址已添加！',

        # Perl Module: Kernel/Modules/AdminSystemMaintenance.pm
        'Start date shouldn\'t be defined after Stop date!' => '',
        'There was an error creating the System Maintenance' => '',
        'Need SystemMaintenanceID!' => '',
        'Could not get data for SystemMaintenanceID %s' => '',
        'System Maintenance was saved successfully!' => '',
        'Session has been killed!' => '',
        'All sessions have been killed, except for your own.' => '',
        'There was an error updating the System Maintenance' => '',
        'Was not possible to delete the SystemMaintenance entry: %s!' => '',

        # Perl Module: Kernel/Modules/AdminTemplate.pm
        'Template updated!' => '',
        'Template added!' => '',

        # Perl Module: Kernel/Modules/AdminType.pm
        'Need Type!' => '',
        'Type updated!' => '類型已更新！',
        'Type added!' => '類型已添加！',

        # Perl Module: Kernel/Modules/AdminUser.pm
        'Agent updated!' => '服務人員已更新！',

        # Perl Module: Kernel/Modules/AgentCustomerSearch.pm
        'Customer History' => '',

        # Perl Module: Kernel/Modules/AgentDashboardCommon.pm
        'No such config for %s' => '',
        'Statistic' => '',
        'No preferences for %s!' => '',
        'Can\'t get element data of %s!' => '',
        'Can\'t get filter content data of %s!' => '',

        # Perl Module: Kernel/Modules/AgentLinkObject.pm
        'Need SourceObject and SourceKey!' => '',
        'Please contact the admin.' => '',
        'You need ro permission!' => '',
        'Can not delete link with %s!' => '',
        'Can not create link with %s! Object already linked as %s.' => '',
        'Can not create link with %s!' => '',
        'The object %s cannot link with other object!' => '',

        # Perl Module: Kernel/Modules/AgentPreferences.pm
        'Param Group is required!' => '',

        # Perl Module: Kernel/Modules/AgentSpelling.pm
        'No suggestions' => '無建議',

        # Perl Module: Kernel/Modules/AgentStatistics.pm
        'Parameter %s is missing.' => '',
        'Invalid Subaction.' => '',
        'Statistic could not be imported.' => '',
        'Please upload a valid statistic file.' => '',
        'Export: Need StatID!' => '',
        'Delete: Get no StatID!' => '',
        'Need StatID!' => '',
        'Could not load stat.' => '',
        'Could not create statistic.' => '',
        'Run: Get no %s!' => '',

        # Perl Module: Kernel/Modules/AgentTicketActionCommon.pm
        'No TicketID is given!' => '',
        'You need %s permissions!' => '',
        'Sorry, you need to be the ticket owner to perform this action.' =>
            '只有工單的所有者才能執行此操作。',
        'Please change the owner first.' => '請先更改工單的所有者.',
        'Could not perform validation on field %s!' => '',
        'No subject' => '',
        'Previous Owner' => '前一個所有者',
        'wrote' => '寫道',
        'Message from' => '',
        'End message' => '',

        # Perl Module: Kernel/Modules/AgentTicketBounce.pm
        '%s is needed!' => '',
        'Please contact your administrator' => '請聯繫管理員',
        'Plain article not found for article %s!' => '',
        'Article does not belong to ticket %s!' => '',
        'Can\'t bounce email!' => '',
        'Can\'t send email!' => '',
        'Wrong Subaction!' => '',

        # Perl Module: Kernel/Modules/AgentTicketBulk.pm
        'Can\'t lock Tickets, no TicketIDs are given!' => '',
        'Ticket (%s) is not unlocked!' => '',
        'Bulk feature is not enabled!' => '',
        'No selectable TicketID is given!' => '',
        'You either selected no ticket or only tickets which are locked by other agents' =>
            '',
        'You need to select at least one ticket' => '',
        'You don\'t have write access to this ticket.' => '您不具有此工單的寫權限',
        'Ticket selected.' => '工單已被選中.',
        'Ticket is locked by another agent and will be ignored!' => '',
        'Ticket locked.' => '工單已鎖定.',

        # Perl Module: Kernel/Modules/AgentTicketCompose.pm
        'Can not determine the ArticleType!' => '',
        'Address %s replaced with registered customer address.' => '%s地址已被用戶註冊的地址所替換',
        'Customer user automatically added in Cc.' => '用戶被自動地添加到Cc中.',

        # Perl Module: Kernel/Modules/AgentTicketEmail.pm
        'Ticket "%s" created!' => '工單："%s"已創建!',
        'No Subaction!' => '',

        # Perl Module: Kernel/Modules/AgentTicketEmailOutbound.pm
        'Got no TicketID!' => '',
        'System Error!' => '',

        # Perl Module: Kernel/Modules/AgentTicketEscalationView.pm
        'Today' => '今天',
        'Tomorrow' => '明天',
        'Next week' => '下週',
        'Invalid Filter: %s!' => '',
        'Ticket Escalation View' => '工單升級視圖',

        # Perl Module: Kernel/Modules/AgentTicketForward.pm
        'Forwarded message from' => '',
        'End forwarded message' => '',

        # Perl Module: Kernel/Modules/AgentTicketHistory.pm
        'Can\'t show history, no TicketID is given!' => '',

        # Perl Module: Kernel/Modules/AgentTicketLock.pm
        'Can\'t lock Ticket, no TicketID is given!' => '',
        'Sorry, the current owner is %s!' => '',
        'Please become the owner first.' => '',
        'Ticket (ID=%s) is locked by %s!' => '',
        'Change the owner!' => '',

        # Perl Module: Kernel/Modules/AgentTicketLockedView.pm
        'New Article' => '新信件',
        'Pending' => '掛起',
        'Reminder Reached' => '提醒時間已過',
        'My Locked Tickets' => '我鎖定的工單',

        # Perl Module: Kernel/Modules/AgentTicketMerge.pm
        'Can\'t merge ticket with itself!' => '',

        # Perl Module: Kernel/Modules/AgentTicketMove.pm
        'You need move permissions!' => '',

        # Perl Module: Kernel/Modules/AgentTicketPhone.pm
        'Chat is not active.' => '',
        'No permission.' => '',
        '%s has left the chat.' => '',
        'This chat has been closed and will be removed in %s hours.' => '',

        # Perl Module: Kernel/Modules/AgentTicketPlain.pm
        'No ArticleID!' => '',
        'Can\'t read plain article! Maybe there is no plain email in backend! Read backend message.' =>
            '',

        # Perl Module: Kernel/Modules/AgentTicketPrint.pm
        'Need TicketID!' => '',
        'printed by' => '打印',
        'Ticket Dynamic Fields' => '',

        # Perl Module: Kernel/Modules/AgentTicketProcess.pm
        'Couldn\'t get ActivityDialogEntityID "%s"!' => '',
        'No Process configured!' => '',
        'The selected process is invalid!' => '',
        'Process %s is invalid!' => '',
        'Subaction is invalid!' => '',
        'Parameter %s is missing in %s.' => '',
        'No ActivityDialog configured for %s in _RenderAjax!' => '',
        'Got no Start ActivityEntityID or Start ActivityDialogEntityID for Process: %s in _GetParam!' =>
            '',
        'Couldn\'t get Ticket for TicketID: %s in _GetParam!' => '',
        'Couldn\'t determine ActivityEntityID. DynamicField or Config isn\'t set properly!' =>
            '',
        'DynamicFieldConfig missing for field: %s, or is not a Ticket Dynamic Field!' =>
            '',
        'Process::Default%s Config Value missing!' => '',
        'Got no ProcessEntityID or TicketID and ActivityDialogEntityID!' =>
            '',
        'Can\'t get StartActivityDialog and StartActivityDialog for the ProcessEntityID "%s"!' =>
            '',
        'Can\'t get Ticket "%s"!' => '',
        'Can\'t get ProcessEntityID or ActivityEntityID for Ticket "%s"!' =>
            '',
        'Can\'t get Activity configuration for ActivityEntityID "%s"!' =>
            '',
        'Can\'t get ActivityDialog configuration for ActivityDialogEntityID "%s"!' =>
            '',
        'Can\'t get data for Field "%s" of ActivityDialog "%s"!' => '',
        'PendingTime can just be used if State or StateID is configured for the same ActivityDialog. ActivityDialog: %s!' =>
            '',
        'Pending Date' => '掛起時間',
        'for pending* states' => '針對掛起狀態',
        'ActivityDialogEntityID missing!' => '',
        'Couldn\'t get Config for ActivityDialogEntityID "%s"!' => '',
        'Couldn\'t use CustomerID as an invisible field. Please contact your system administrator!' =>
            '',
        'Missing ProcessEntityID, check your ActivityDialogHeader.tt!' =>
            '',
        'No StartActivityDialog or StartActivityDialog for Process "%s" configured!' =>
            '',
        'Couldn\'t create ticket for Process with ProcessEntityID "%s"!' =>
            '',
        'Couldn\'t set ProcessEntityID "%s" on TicketID "%s"!' => '',
        'Couldn\'t set ActivityEntityID "%s" on TicketID "%s"!' => '',
        'Could not store ActivityDialog, invalid TicketID: %s!' => '',
        'Invalid TicketID: %s!' => '',
        'Missing ActivityEntityID in Ticket %s!' => '',
        'Missing ProcessEntityID in Ticket %s!' => '',
        'Could not set DynamicField value for %s of Ticket with ID "%s" in ActivityDialog "%s"!' =>
            '',
        'Could not set PendingTime for Ticket with ID "%s" in ActivityDialog "%s"!' =>
            '',
        'Wrong ActivityDialog Field config: %s can\'t be Display => 1 / Show field (Please change its configuration to be Display => 0 / Do not show field or Display => 2 / Show field as mandatory)!' =>
            '',
        'Could not set %s for Ticket with ID "%s" in ActivityDialog "%s"!' =>
            '',
        'Default Config for Process::Default%s missing!' => '',
        'Default Config for Process::Default%s invalid!' => '',

        # Perl Module: Kernel/Modules/AgentTicketQueue.pm
        'Available tickets' => '未鎖定的工單',
        'including subqueues' => '',
        'excluding subqueues' => '',
        'QueueView' => '隊列視圖',

        # Perl Module: Kernel/Modules/AgentTicketResponsibleView.pm
        'My Responsible Tickets' => '我負責的工單',

        # Perl Module: Kernel/Modules/AgentTicketSearch.pm
        'last-search' => '上次搜索',
        'Untitled' => '',
        'Ticket Number' => '工單編號',
        'Customer Realname' => '',
        'Ticket' => '工單',
        'Invalid Users' => '',
        'Normal' => '普通',
        'CSV' => '',
        'Excel' => '',

        # Perl Module: Kernel/Modules/AgentTicketService.pm
        'Feature not enabled!' => '',
        'Service View' => '',

        # Perl Module: Kernel/Modules/AgentTicketStatusView.pm
        'Status View' => '狀態視圖',

        # Perl Module: Kernel/Modules/AgentTicketWatchView.pm
        'My Watched Tickets' => '我訂閱的工單',

        # Perl Module: Kernel/Modules/AgentTicketWatcher.pm
        'Feature is not active' => '',

        # Perl Module: Kernel/Modules/AgentTicketZoom.pm
        'Ticket Created' => '',
        'Note Added' => '',
        'Note Added (Customer)' => '',
        'Outgoing Email' => '',
        'Outgoing Email (internal)' => '',
        'Incoming Customer Email' => '',
        'Dynamic Field Updated' => '',
        'Outgoing Phone Call' => '',
        'Incoming Phone Call' => '',
        'Outgoing Answer' => '',
        'SLA Updated' => '',
        'Service Updated' => '',
        'Customer Updated' => '',
        'State Updated' => '',
        'Incoming Follow-Up' => '',
        'Escalation Update Time Stopped' => '',
        'Escalation Solution Time Stopped' => '',
        'Escalation First Response Time Stopped' => '',
        'Escalation Response Time Stopped' => '',
        'Link Added' => '',
        'Link Deleted' => '',
        'Ticket Merged' => '',
        'Pending Time Set' => '',
        'Ticket Locked' => '',
        'Ticket Unlocked' => '',
        'Queue Updated' => '',
        'Priority Updated' => '',
        'Title Updated' => '',
        'Type Updated' => '',
        'Incoming Web Request' => '',
        'Automatic Follow-Up Sent' => '',
        'Automatic Reply Sent' => '',
        'Time Accounted' => '',
        'External Chat' => '',
        'Internal Chat' => '',
        'We are sorry, you do not have permissions anymore to access this ticket in its current state.' =>
            '',
        'Can\'t get for ArticleID %s!' => '',
        'Article filter settings were saved.' => '',
        'Event type filter settings were saved.' => '',
        'Need ArticleID!' => '',
        'Invalid ArticleID!' => '',
        'Fields with no group' => '',
        'Reply All' => '回復所有',
        'Forward' => '轉發',
        'Forward article via mail' => '通過郵件轉發信件',
        'Bounce Article to a different mail address' => '',
        'Bounce' => '退回',
        'Split this article' => '拆分信件',
        'Split' => '拆分',
        'Print this article' => '打印信件',
        'View the source for this Article' => '',
        'Plain Format' => '純文本格式',
        'Mark' => '標記',
        'Unmark' => '取消標記',
        'Reply to note' => '',

        # Perl Module: Kernel/Modules/CustomerTicketAttachment.pm
        'FileID and ArticleID are needed!' => '',
        'No TicketID for ArticleID (%s)!' => '',
        'No such attachment (%s)!' => '',

        # Perl Module: Kernel/Modules/CustomerTicketMessage.pm
        'Check SysConfig setting for %s::QueueDefault.' => '',
        'Check SysConfig setting for %s::TicketTypeDefault.' => '',

        # Perl Module: Kernel/Modules/CustomerTicketOverview.pm
        'Need CustomerID!' => '',

        # Perl Module: Kernel/Modules/CustomerTicketSearch.pm
        'Created within the last' => '在過去的...創建',
        'Created more than ... ago' => '在...之前創建',
        'Please remove the following words because they cannot be used for the search:' =>
            '',

        # Perl Module: Kernel/Modules/CustomerTicketZoom.pm
        'Can\'t reopen ticket, not possible in this queue!' => '',
        'Create a new ticket!' => '',

        # Perl Module: Kernel/Modules/Installer.pm
        'Directory "%s" doesn\'t exist!' => '',
        'Configure "Home" in Kernel/Config.pm first!' => '',
        'File "%s/Kernel/Config.pm" not found!' => '',
        'Directory "%s" not found!' => '',
        'Install OTRS' => '安裝OTRS',
        'Intro' => '介紹',
        'Kernel/Config.pm isn\'t writable!' => '',
        'If you want to use the installer, set the Kernel/Config.pm writable for the webserver user!' =>
            '',
        'Database Selection' => '數據庫選擇',
        'Unknown Check!' => '',
        'The check "%s" doesn\'t exist!' => '',
        'Enter the password for the database user.' => '輸入數據庫用戶密碼。',
        'Database %s' => '',
        'Enter the password for the administrative database user.' => '輸入數據庫管理員密碼。',
        'Unknown database type "%s".' => '',
        'Please go back' => '',
        'Create Database' => '創建數據庫',
        'Install OTRS - Error' => '',
        'File "%s/%s.xml" not found!' => '',
        'Contact your Admin!' => '',
        'System Settings' => '數據庫設置 ',
        'Configure Mail' => '配置郵件',
        'Mail Configuration' => '郵件配置',
        'Can\'t write Config file!' => '',
        'Unknown Subaction %s!' => '',
        'Can\'t connect to database, Perl module DBD::%s not installed!' =>
            '',
        'Can\'t connect to database, read comment!' => '',
        'Database already contains data - it should be empty!' => '數據庫中已包含數據 - 應該刪除它！',
        'Error: Please make sure your database accepts packages over %s MB in size (it currently only accepts packages up to %s MB). Please adapt the max_allowed_packet setting of your database in order to avoid errors.' =>
            '',
        'Error: Please set the value for innodb_log_file_size on your database to at least %s MB (current: %s MB, recommended: %s MB). For more information, please have a look at %s.' =>
            '',

        # Perl Module: Kernel/Modules/PublicRepository.pm
        'Need config Package::RepositoryAccessRegExp' => '',
        'Authentication failed from %s!' => '',

        # Perl Module: Kernel/Output/HTML/ArticleCheck/PGP.pm
        'Crypted' => '已加密',
        'Sent message encrypted to recipient!' => '',
        'Signed' => '已簽名',
        '"PGP SIGNED MESSAGE" header found, but invalid!' => '',

        # Perl Module: Kernel/Output/HTML/ArticleCheck/SMIME.pm
        '"S/MIME SIGNED MESSAGE" header found, but invalid!' => '',
        'Ticket decrypted before' => '',
        'Impossible to decrypt: private key for email was not found!' => '',
        'Successful decryption' => '',

        # Perl Module: Kernel/Output/HTML/ArticleCompose/Crypt.pm
        'Crypt' => '加密',

        # Perl Module: Kernel/Output/HTML/ArticleCompose/Sign.pm
        'Sign' => '簽名',

        # Perl Module: Kernel/Output/HTML/Dashboard/CustomerUserList.pm
        'Shown customer users' => '顯示用戶',

        # Perl Module: Kernel/Output/HTML/Dashboard/EventsTicketCalendar.pm
        'The start time of a ticket has been set after the end time!' => '',

        # Perl Module: Kernel/Output/HTML/Dashboard/TicketGeneric.pm
        'Shown Tickets' => '顯示工單',
        'Shown Columns' => '顯示字段',
        'filter not active' => '',
        'filter active' => '',
        'sorted ascending' => '',
        'sorted descending' => '',
        'This ticket has no title or subject' => '',

        # Perl Module: Kernel/Output/HTML/Dashboard/TicketStatsGeneric.pm
        '7 Day Stats' => '最近7天統計',

        # Perl Module: Kernel/Output/HTML/Dashboard/UserOnline.pm
        'Shown' => '顯示',
        'This user is currently offline' => '',
        'This user is currently active' => '',
        'This user is currently away' => '',
        'This user is currently unavailable' => '',

        # Perl Module: Kernel/Output/HTML/Layout.pm
        'Standard' => '標準',
        'h' => '時',
        'm' => '分',
        'hour' => '小時',
        'minute' => '分鐘',
        'd' => '天',
        'day' => '天',
        'We are sorry, you do not have permissions anymore to access this ticket in its current state. You can take one of the following actions:' =>
            '',
        'This is a' => '這是一個',
        'email' => 'E-Mail',
        'click here' => '點擊這裡',
        'to open it in a new window.' => '在新窗口中打開它',
        'Hours' => '小時',
        'Minutes' => '分鐘',
        'Check to activate this date' => '選中它，以便設置這個日期',
        'No Permission!' => '無權限!',
        'No Permission' => '',
        'Show Tree Selection' => '',

        # Perl Module: Kernel/Output/HTML/Layout/LinkObject.pm
        'Linked as' => '',
        'Search Result' => '',
        'Linked' => '已鏈接',
        'Bulk' => '批量',

        # Perl Module: Kernel/Output/HTML/Layout/Ticket.pm
        'Lite' => '簡潔',
        'Unread article(s) available' => '未讀信件',

        # Perl Module: Kernel/Output/HTML/Notification/AgentCloudServicesDisabled.pm
        'Enable cloud services to unleash all OTRS features!' => '',

        # Perl Module: Kernel/Output/HTML/Notification/AgentOTRSBusiness.pm
        '%s Upgrade to %s now! %s' => '',
        'The license for your %s is about to expire. Please make contact with %s to renew your contract!' =>
            '',
        'An update for your %s is available, but there is a conflict with your framework version! Please update your framework first!' =>
            '',

        # Perl Module: Kernel/Output/HTML/Notification/AgentOnline.pm
        'Online Agent: %s' => '在綫服務人員：%s',

        # Perl Module: Kernel/Output/HTML/Notification/AgentTicketEscalation.pm
        'There are more escalated tickets!' => '有更多升級的工單',

        # Perl Module: Kernel/Output/HTML/Notification/AgentTimeZoneCheck.pm
        'Please select a time zone in your preferences and confirm it by clicking "Update".' =>
            '',

        # Perl Module: Kernel/Output/HTML/Notification/CustomerOnline.pm
        'Online Customer: %s' => '在綫用戶: %s',

        # Perl Module: Kernel/Output/HTML/Notification/CustomerSystemMaintenanceCheck.pm
        'A system maintenance period will start at: ' => '',

        # Perl Module: Kernel/Output/HTML/Notification/DaemonCheck.pm
        'OTRS Daemon is not running.' => '',
        'Please contact your administrator!' => '',

        # Perl Module: Kernel/Output/HTML/Notification/OutofOfficeCheck.pm
        'You have Out of Office enabled, would you like to disable it?' =>
            '您已設置為不在辦公室，是否取消它?',

        # Perl Module: Kernel/Output/HTML/Notification/UIDCheck.pm
        'Don\'t use the Superuser account to work with OTRS! Create new Agents and work with these accounts instead.' =>
            '不要使用OTRS系統缺省帳號! 請創建新的服務人員帳號。',

        # Perl Module: Kernel/Output/HTML/Preferences/ColumnFilters.pm
        'Preferences updated successfully!' => '設置更新成功！',

        # Perl Module: Kernel/Output/HTML/Preferences/Language.pm
        '(in process)' => '',

        # Perl Module: Kernel/Output/HTML/Preferences/NotificationEvent.pm
        'Please make sure you\'ve chosen at least one transport method for mandatory notifications.' =>
            '',

        # Perl Module: Kernel/Output/HTML/Preferences/OutOfOffice.pm
        'Please specify an end date that is after the start date.' => '',

        # Perl Module: Kernel/Output/HTML/Preferences/Password.pm
        'Current password' => '當前密碼',
        'New password' => '新密碼',
        'Verify password' => '重複新密碼',
        'The current password is not correct. Please try again!' => '當前密碼不正確，請重新輸入！',
        'Please supply your new password!' => '',
        'Can\'t update password, your new passwords do not match. Please try again!' =>
            '無法更改密碼。新密碼不一致，請重新輸入！',
        'Can\'t update password, it contains invalid characters!' => '無法更改密碼，密碼不能包含非法字符！',
        'Can\'t update password, it must be at least %s characters long!' =>
            '無法更改密碼，密碼至少需要%s個字符！',
        'Can\'t update password, it must contain at least 2 lowercase and 2 uppercase characters!' =>
            '無法更改密碼，密碼必須包含至少2個小寫和2個大寫字符！',
        'Can\'t update password, it must contain at least 1 digit!' => '無法更改密碼，密碼至少需要1個數字字符！',
        'Can\'t update password, it must contain at least 2 characters!' =>
            '無法更改密碼，密碼至少需要2個字符！',

        # Perl Module: Kernel/Output/HTML/Preferences/TimeZone.pm
        'Time zone updated successfully!' => '',

        # Perl Module: Kernel/Output/HTML/Statistics/View.pm
        'No past complete or the current+upcoming complete relative time value selected.' =>
            '',
        'The selected time period is larger than the allowed time period.' =>
            '',
        'No time scale value available for the current selected time scale value on the X axis.' =>
            '',
        'The selected date is not valid.' => '',
        'The selected end time is before the start time.' => '',
        'There is something wrong with your time selection.' => '',
        'Please select only one element or allow modification at stat generation time.' =>
            '',
        'Please select at least one value of this field or allow modification at stat generation time.' =>
            '',
        'Please select one element for the X-axis.' => '',
        'You can only use one time element for the Y axis.' => '',
        'You can only use one or two elements for the Y axis.' => '',
        'Please select at least one value of this field.' => '',
        'Please provide a value or allow modification at stat generation time.' =>
            '',
        'Please select a time scale.' => '',
        'Your reporting time interval is too small, please use a larger time scale.' =>
            '',
        'second(s)' => '秒',
        'quarter(s)' => '',
        'half-year(s)' => '',
        'Please remove the following words because they cannot be used for the ticket restrictions: %s.' =>
            '',

        # Perl Module: Kernel/Output/HTML/TicketMenu/Lock.pm
        'Unlock to give it back to the queue' => '解鎖並釋放工單至隊列',
        'Lock it to work on it' => '鎖定並處理工單',

        # Perl Module: Kernel/Output/HTML/TicketMenu/TicketWatcher.pm
        'Unwatch' => '取消訂閱',
        'Remove from list of watched tickets' => '取消訂閱此工單',
        'Watch' => '訂閱',
        'Add to list of watched tickets' => '訂閱此工單',

        # Perl Module: Kernel/Output/HTML/TicketOverviewMenu/Sort.pm
        'Order by' => '排序',

        # Perl Module: Kernel/Output/HTML/TicketZoom/TicketInformation.pm
        'Ticket Information' => '工單信息',

        # Perl Module: Kernel/Output/HTML/ToolBar/TicketLocked.pm
        'Locked Tickets New' => '鎖定工單(未讀信件)',
        'Locked Tickets Reminder Reached' => '鎖定工單(提醒時間已過)',
        'Locked Tickets Total' => '鎖定工單總數',

        # Perl Module: Kernel/Output/HTML/ToolBar/TicketResponsible.pm
        'Responsible Tickets New' => '負責的工單(未讀信件)',
        'Responsible Tickets Reminder Reached' => '負責的工單(提醒時間已過)',
        'Responsible Tickets Total' => '負責工單總數',

        # Perl Module: Kernel/Output/HTML/ToolBar/TicketWatcher.pm
        'Watched Tickets New' => '訂閱工單(未讀信件)',
        'Watched Tickets Reminder Reached' => '訂閱工單(提醒時間已過)',
        'Watched Tickets Total' => '訂閱工單總數',

        # Perl Module: Kernel/System/Auth.pm
        'It is currently not possible to login due to a scheduled system maintenance.' =>
            '',

        # Perl Module: Kernel/System/AuthSession/DB.pm
        'Session invalid. Please log in again.' => '會話無效，請重新登錄.',
        'Session has timed out. Please log in again.' => '會話超時，請重新登錄.',
        'Session limit reached! Please try again later.' => '超過會話數量，請稍後再試.',
        'Session per user limit reached!' => '',

        # Perl Module: Kernel/System/Console/Command/Dev/Tools/Config2Docbook.pm
        'Configuration Options Reference' => '',
        'This setting can not be changed.' => '',
        'This setting is not active by default.' => '',
        'This setting can not be deactivated.' => '',

        # Perl Module: Kernel/System/DynamicField/Driver/BaseDateTime.pm
        'in more than ...' => '...內',
        'before/after' => '相對',
        'between' => '絕對',

        # Perl Module: Kernel/System/DynamicField/Driver/TextArea.pm
        'This field is required or' => '',
        'The field content is too long!' => '',
        'Maximum size is %s characters.' => '',

        # Perl Module: Kernel/System/Package.pm
        'not installed' => '',
        'installed' => '已安裝',
        'Unable to parse repository index document.' => '無法解釋軟件倉庫索引文檔',
        'No packages for your framework version found in this repository, it only contains packages for other framework versions.' =>
            '軟件倉庫中沒有當前系統版本可用的軟件包。',
        '<br>If you continue to install this package, the following issues may occur!<br><br>&nbsp;-Security problems<br>&nbsp;-Stability problems<br>&nbsp;-Performance problems<br><br>Please note that issues that are caused by working with this package are not covered by OTRS service contracts!<br><br>' =>
            '<br>如果安裝這個擴展包，可能導致以下問題！<br><br>&nbsp;-安全問題<br>&nbsp;-穩定問題<br>&nbsp;-性能問題<br><br>由此導致的問題與OTRS服務合同無關！<br><br>',

        # Perl Module: Kernel/System/Registration.pm
        'Can\'t contact registration server. Please try again later.' => '',
        'No content received from registration server. Please try again later.' =>
            '',
        'Can\'t get Token from sever' => '',
        'Username and password do not match. Please try again.' => '',
        'Problems processing server result. Please try again later.' => '',

        # Perl Module: Kernel/System/Stats.pm
        'week' => '星期',
        'quarter' => '',
        'half-year' => '',

        # Perl Module: Kernel/System/Stats/Dynamic/Ticket.pm
        'State Type' => '',
        'Created Priority' => '創建的優先級',
        'Created State' => '創建的狀態',
        'CustomerUserLogin' => '用戶登陸',
        'Create Time' => '創建時間',
        'Close Time' => '關閉時間',
        'Escalation' => '升級',
        'Escalation - First Response Time' => '',
        'Escalation - Update Time' => '',
        'Escalation - Solution Time' => '',
        'Agent/Owner' => '服務人員/所有者',
        'Created by Agent/Owner' => '創建人',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketAccountedTime.pm
        'Evaluation by' => '評估方法',
        'Ticket/Article Accounted Time' => '工單/信件所佔用的時間',
        'Ticket Create Time' => '工單創建時間',
        'Ticket Close Time' => '工單關閉時間',
        'Accounted time by Agent' => '服務人員處理工單所用的時間',

        # Perl Module: Kernel/System/Stats/Dynamic/TicketList.pm
        'Attributes to be printed' => '打印的屬性',
        'Sort sequence' => '排序',
        'State Historic' => '',
        'State Type Historic' => '',
        'Historic Time Range' => '',

        # Perl Module: Kernel/System/Stats/Static/StateAction.pm
        'Days' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/OutdatedTables.pm
        'Outdated Tables' => '',
        'Outdated tables were found in the database. These can be removed if empty.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/TablePresence.pm
        'Table Presence' => '',
        'Internal Error: Could not open file.' => '',
        'Table Check' => '',
        'Internal Error: Could not read file.' => '',
        'Tables found which are not present in the database.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Size.pm
        'Database Size' => '',
        'Could not determine database size.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mssql/Version.pm
        'Database Version' => '',
        'Could not determine database version.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Charset.pm
        'Client Connection Charset' => '',
        'Setting character_set_client needs to be utf8.' => '',
        'Server Database Charset' => '',
        'Setting character_set_database needs to be UNICODE or UTF8.' => '',
        'Table Charset' => '',
        'There were tables found which do not have utf8 as charset.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/InnoDBLogFileSize.pm
        'InnoDB Log File Size' => '',
        'The setting innodb_log_file_size must be at least 256 MB.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/MaxAllowedPacket.pm
        'Maximum Query Size' => '',
        'The setting \'max_allowed_packet\' must be higher than 20 MB.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Performance.pm
        'Query Cache Size' => '',
        'The setting \'query_cache_size\' should be used (higher than 10 MB but not more than 512 MB).' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/StorageEngine.pm
        'Default Storage Engine' => '',
        'Table Storage Engine' => '',
        'Tables with a different storage engine than the default engine were found.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/mysql/Version.pm
        'MySQL 5.x or higher is required.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/oracle/NLS.pm
        'NLS_LANG Setting' => '',
        'NLS_LANG must be set to al32utf8 (e.g. GERMAN_GERMANY.AL32UTF8).' =>
            '',
        'NLS_DATE_FORMAT Setting' => '',
        'NLS_DATE_FORMAT must be set to \'YYYY-MM-DD HH24:MI:SS\'.' => '',
        'NLS_DATE_FORMAT Setting SQL Check' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Charset.pm
        'Setting client_encoding needs to be UNICODE or UTF8.' => '',
        'Setting server_encoding needs to be UNICODE or UTF8.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/DateStyle.pm
        'Date Format' => '',
        'Setting DateStyle needs to be ISO.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Database/postgresql/Version.pm
        'PostgreSQL 8.x or higher is required.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskPartitionOTRS.pm
        'OTRS Disk Partition' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpace.pm
        'Disk Usage' => '',
        'The partition where OTRS is located is almost full.' => '',
        'The partition where OTRS is located has no disk space problems.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/DiskSpacePartitions.pm
        'Operating System/Disk Partitions Usage' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Distribution.pm
        'Distribution' => '',
        'Could not determine distribution.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/KernelVersion.pm
        'Kernel Version' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Load.pm
        'System Load' => '',
        'The system load should be at maximum the number of CPUs the system has (e.g. a load of 8 or less on a system with 8 CPUs is OK).' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/PerlModules.pm
        'Perl Modules' => '',
        'Not all required Perl modules are correctly installed.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OS/Swap.pm
        'Free Swap Space (%)' => '',
        'No swap enabled.' => '',
        'Used Swap Space (MB)' => '',
        'There should be more than 60% free swap space.' => '',
        'There should be no more than 200 MB swap space used.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ConfigSettings.pm
        'OTRS/Config Settings' => '',
        'Could not determine value.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DaemonRunning.pm
        'OTRS' => '',
        'Daemon' => '',
        'Daemon is not running.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DatabaseRecords.pm
        'OTRS/Database Records' => '',
        'Tickets' => '工單',
        'Ticket History Entries' => '',
        'Articles' => '',
        'Attachments (DB, Without HTML)' => '',
        'Customers With At Least One Ticket' => '',
        'Dynamic Field Values' => '',
        'Invalid Dynamic Fields' => '',
        'Invalid Dynamic Field Values' => '',
        'GenericInterface Webservices' => '',
        'Months Between First And Last Ticket' => '',
        'Tickets Per Month (avg)' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultSOAPUser.pm
        'Default SOAP Username And Password' => '',
        'Security risk: you use the default setting for SOAP::User and SOAP::Password. Please change it.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/DefaultUser.pm
        'Default Admin Password' => '',
        'Security risk: the agent account root@localhost still has the default password. Please change it or invalidate the account.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/ErrorLog.pm
        'Error Log' => '',
        'There are error reports in your system log.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FQDN.pm
        'FQDN (domain name)' => '',
        'Please configure your FQDN setting.' => '',
        'Domain Name' => '',
        'Your FQDN setting is invalid.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/FileSystemWritable.pm
        'File System Writable' => '',
        'The file system on your OTRS partition is not writable.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageDeployment.pm
        'Package Installation Status' => '',
        'Some packages have locally modified files.' => '',
        'Some packages are not correctly installed.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/PackageList.pm
        'OTRS/Package List' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/SystemID.pm
        'Your SystemID setting is invalid, it should only contain digits.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/DefaultType.pm
        'Default Ticket Type' => '',
        'The configured default ticket type is invalid or missing. Please change the setting Ticket::Type::Default and select a valid ticket type.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/IndexModule.pm
        'Ticket Index Module' => '',
        'You have more than 60,000 tickets and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/InvalidUsersWithLockedTickets.pm
        'Invalid Users with Locked Tickets' => '',
        'There are invalid users with locked tickets.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/OpenTickets.pm
        'Open Tickets' => '',
        'You should not have more than 8,000 open tickets in your system.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/SearchIndexModule.pm
        'Ticket Search Index Module' => '',
        'You have more than 50,000 articles and should use the StaticDB backend. See admin manual (Performance Tuning) for more information.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/Ticket/StaticDBOrphanedRecords.pm
        'Orphaned Records In ticket_lock_index Table' => '',
        'Table ticket_lock_index contains orphaned records. Please run bin/otrs.Console.pl "Maint::Ticket::QueueIndexCleanup" to clean the StaticDB index.' =>
            '',
        'Orphaned Records In ticket_index Table' => '',
        'Table ticket_index contains orphaned records. Please run otrs/bin/otrs.CleanTicketIndex.pl to clean the StaticDB index.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/OTRS/TimeSettings.pm
        'OTRS/Time Settings' => '',
        'Server time zone' => '',
        'OTRS time zone' => '',
        'OTRS time zone is not set.' => '',
        'User default time zone' => '',
        'User default time zone is not set.' => '',
        'OTRS time zone setting for calendar' => '',
        'Calendar time zone is not set.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/LoadedModules.pm
        'Webserver/Loaded Apache Modules' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/MPMModel.pm
        'Webserver' => '',
        'MPM model' => '',
        'OTRS requires apache to be run with the \'prefork\' MPM model.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Apache/Performance.pm
        'CGI Accelerator Usage' => '',
        'You should use FastCGI or mod_perl to increase your performance.' =>
            '',
        'mod_deflate Usage' => '',
        'Please install mod_deflate to improve GUI speed.' => '',
        'mod_filter Usage' => '',
        'Please install mod_filter if mod_deflate is used.' => '',
        'mod_headers Usage' => '',
        'Please install mod_headers to improve GUI speed.' => '',
        'Apache::Reload Usage' => '',
        'Apache::Reload or Apache2::Reload should be used as PerlModule and PerlInitHandler to prevent web server restarts when installing and upgrading modules.' =>
            '',
        'Apache2::DBI Usage' => '',
        'Apache2::DBI should be used to get a better performance  with pre-established database connections.' =>
            '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/EnvironmentVariables.pm
        'Webserver/Environment Variables' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/IIS/Performance.pm
        'You should use PerlEx to increase your performance.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/Plugin/Webserver/Version.pm
        'Webserver Version' => '',
        'Could not determine webserver version.' => '',

        # Perl Module: Kernel/System/SupportDataCollector/PluginBase.pm
        'Unknown' => '',
        'OK' => '',
        'Problem' => '',

        # Perl Module: Kernel/System/Ticket.pm
        'Reset of unlock time.' => '',

        # Perl Module: Kernel/System/Ticket/Event/NotificationEvent/Transport/Email.pm
        'PGP sign only' => '',
        'PGP encrypt only' => '',
        'PGP sign and encrypt' => '',
        'SMIME sign only' => '',
        'SMIME encrypt only' => '',
        'SMIME sign and encrypt' => '',
        'PGP and SMIME not enabled.' => '',
        'Skip notification delivery' => '',
        'Send unsigned notification' => '',
        'Send unencrypted notification' => '',

        # Perl Module: Kernel/System/Web/InterfaceAgent.pm
        'Login failed! Your user name or password was entered incorrectly.' =>
            '登錄失敗！用戶名或密碼錯誤。',
        'Panic, user authenticated but no user data can be found in OTRS DB!! Perhaps the user is invalid.' =>
            '',
        'Can`t remove SessionID' => '',
        'Logout successful.' => '',
        'Feature not active!' => '該功能尚未激活!',
        'Sent password reset instructions. Please check your email.' => '密碼初始化說明已發送，請檢查郵件。',
        'Invalid Token!' => '無效的標記',
        'Sent new password to %s. Please check your email.' => '新密碼已發送到%s，請檢查郵件。',
        'Panic! Invalid Session!!!' => '',
        'No Permission to use this frontend module!' => '',

        # Perl Module: Kernel/System/Web/InterfaceCustomer.pm
        'Authentication succeeded, but no customer record is found in the customer backend. Please contact your administrator.' =>
            '',
        'Reset password unsuccessful. Please contact your administrator' =>
            '',
        'This e-mail address already exists. Please log in or reset your password.' =>
            '',
        'This email address is not allowed to register. Please contact support staff.' =>
            '',
        'Added via Customer Panel (%s)' => '',
        'Customer user can\'t be added!' => '',
        'Can\'t send account info!' => '',
        'New account created. Sent login information to %s. Please check your email.' =>
            '帳戶創建成功。登錄信息發送到%s，請查收郵件。',

        # Perl Module: Kernel/System/Web/InterfaceInstaller.pm
        'SecureMode active!' => '',
        'If you want to re-run the Installer, disable the SecureMode in the SysConfig' =>
            '',
        'Action "%s" not found!' => '',

        # Database XML Definition: scripts/database/otrs-initial_insert.xml
        'valid' => '有效',
        'invalid' => '無效',
        'invalid-temporarily' => '暫時無效',
        'Group for default access.' => '',
        'Group of all administrators.' => '',
        'Group for statistics access.' => '',
        'new' => '新建',
        'All new state types (default: viewable).' => '',
        'open' => '處理中',
        'All open state types (default: viewable).' => '',
        'closed' => '已關閉',
        'All closed state types (default: not viewable).' => '',
        'pending reminder' => '掛起提醒',
        'All \'pending reminder\' state types (default: viewable).' => '',
        'pending auto' => '自動掛起',
        'All \'pending auto *\' state types (default: viewable).' => '',
        'removed' => '已刪除',
        'All \'removed\' state types (default: not viewable).' => '',
        'merged' => '已合併',
        'State type for merged tickets (default: not viewable).' => '',
        'New ticket created by customer.' => '',
        'closed successful' => '成功關閉',
        'Ticket is closed successful.' => '',
        'closed unsuccessful' => '失敗關閉',
        'Ticket is closed unsuccessful.' => '',
        'Open tickets.' => '',
        'Customer removed ticket.' => '',
        'Ticket is pending for agent reminder.' => '',
        'pending auto close+' => '掛起自動關閉+',
        'Ticket is pending for automatic close.' => '',
        'pending auto close-' => '掛起自動關閉-',
        'State for merged tickets.' => '',
        'system standard salutation (en)' => '',
        'Standard Salutation.' => '',
        'system standard signature (en)' => '',
        'Standard Signature.' => '',
        'Standard Address.' => '',
        'possible' => '可能',
        'Follow-ups for closed tickets are possible. Ticket will be reopened.' =>
            '',
        'reject' => '拒絕',
        'Follow-ups for closed tickets are not possible. No new ticket will be created.' =>
            '',
        'new ticket' => '',
        'Follow-ups for closed tickets are not possible. A new ticket will be created..' =>
            '',
        'Postmaster queue.' => '',
        'All default incoming tickets.' => '',
        'All junk tickets.' => '',
        'All misc tickets.' => '',
        'auto reply' => '自動回復',
        'Automatic reply which will be sent out after a new ticket has been created.' =>
            '',
        'auto reject' => '自動拒絕',
        'Automatic reject which will be sent out after a follow-up has been rejected (in case queue follow-up option is "reject").' =>
            '',
        'auto follow up' => '自動跟進',
        'Automatic confirmation which is sent out after a follow-up has been received for a ticket (in case queue follow-up option is "possible").' =>
            '',
        'auto reply/new ticket' => '自動回復新工單',
        'Automatic response which will be sent out after a follow-up has been rejected and a new ticket has been created (in case queue follow-up option is "new ticket").' =>
            '',
        'auto remove' => '自動刪除',
        'Auto remove will be sent out after a customer removed the request.' =>
            '',
        'default reply (after new ticket has been created)' => '',
        'default reject (after follow-up and rejected of a closed ticket)' =>
            '',
        'default follow-up (after a ticket follow-up has been added)' => '',
        'default reject/new ticket created (after closed follow-up with new ticket creation)' =>
            '',
        'Unclassified' => '',
        '1 very low' => '1-非常低',
        '2 low' => '2-低',
        '3 normal' => '3-正常',
        '4 high' => '4-高',
        '5 very high' => '5-非常高',
        'unlock' => '未鎖定',
        'lock' => '鎖定',
        'tmp_lock' => '',
        'email-external' => ' (郵件-外部)',
        'email-internal' => ' (郵件-内部)',
        'email-notification-ext' => '',
        'email-notification-int' => '',
        'agent' => '服務人員',
        'system' => '系統',
        'customer' => '用戶單位',
        'Ticket create notification' => '',
        'You will receive a notification each time a new ticket is created in one of your "My Queues" or "My Services".' =>
            '',
        'Ticket follow-up notification (unlocked)' => '',
        'You will receive a notification if a customer sends a follow-up to an unlocked ticket which is in your "My Queues" or "My Services".' =>
            '',
        'Ticket follow-up notification (locked)' => '',
        'You will receive a notification if a customer sends a follow-up to a locked ticket of which you are the ticket owner or responsible.' =>
            '',
        'Ticket lock timeout notification' => '工單鎖定超時通知',
        'You will receive a notification as soon as a ticket owned by you is automatically unlocked.' =>
            '',
        'Ticket owner update notification' => '',
        'Ticket responsible update notification' => '',
        'Ticket new note notification' => '',
        'Ticket queue update notification' => '',
        'You will receive a notification if a ticket is moved into one of your "My Queues".' =>
            '',
        'Ticket pending reminder notification (locked)' => '',
        'Ticket pending reminder notification (unlocked)' => '',
        'Ticket escalation notification' => '',
        'Ticket escalation warning notification' => '',
        'Ticket service update notification' => '',
        'You will receive a notification if a ticket\'s service is changed to one of your "My Services".' =>
            '',

        # JS File: Core.Agent.Admin.ACL
        'Add all' => '添加所有',
        'An item with this name is already present.' => '名稱相同的條目已存在。',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?' =>
            '該條目中包含子條目。您確定要刪除這個條目及其子條目嗎？',

        # JS File: Core.Agent.Admin.GenericAgent
        'Remove selection' => '',
        'Delete this Event Trigger' => '刪除這個事件觸發器',
        'Duplicate event.' => '',
        'This event is already attached to the job, Please use a different one.' =>
            '',

        # JS File: Core.Agent.Admin.GenericInterfaceDebugger
        'An error occurred during communication.' => '在通訊時發生一個錯誤。',
        'Show or hide the content.' => '顯示或隱藏該内容.',
        'Clear debug log' => '刪除調試日誌',

        # JS File: Core.Agent.Admin.GenericInterfaceInvoker
        'Delete this Invoker' => '刪除這個調用程序',

        # JS File: Core.Agent.Admin.GenericInterfaceOperation
        'Delete this Operation' => '刪除這個操作',

        # JS File: Core.Agent.Admin.GenericInterfaceWebservice
        'Delete webservice' => '刪除Web服務',
        'Clone webservice' => '克隆Web服務',
        'Import webservice' => '導入Web服務',
        'Delete operation' => '刪除操作',
        'Delete invoker' => '刪除調用程序',

        # JS File: Core.Agent.Admin.NotificationEvent
        'Do you really want to delete this notification language?' => '',

        # JS File: Core.Agent.Admin.ProcessManagement.Canvas
        'Remove Entity from canvas' => '從畫布中刪除實體',
        'No TransitionActions assigned.' => '沒有轉向動作被指派',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.' =>
            '沒有指派的環節操作。請從左側列表中選擇一個環節操作，並將它拖放到這裡。',
        'This Activity cannot be deleted because it is the Start Activity.' =>
            '不能刪除這個環節，因為它是開始環節。',
        'Remove the Transition from this Process' => '從該流程中刪除轉向',

        # JS File: Core.Agent.Admin.ProcessManagement
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?' =>
            '一旦您使用這個按鈕或鏈接,您將退出這個界面且當前狀態將被自動保存。您想要繼續嗎?',
        'Delete Entity' => '刪除實體',
        'This Activity is already used in the Process. You cannot add it twice!' =>
            '流程中已包括這個環節，您不能重復添加環節。',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.' =>
            '畫布上已經有一個未連接的轉向。在設置另一個轉向之前，請先連接這個轉向。',
        'This Transition is already used for this Activity. You cannot use it twice!' =>
            '環節已經使用了這個轉向，您不能重復添加轉向。',
        'This TransitionAction is already used in this Path. You cannot use it twice!' =>
            '路徑已經使用了這個轉向動作，您不能重復添加轉向動作。',
        'Hide EntityIDs' => '隱藏實體編號',
        'Edit Field Details' => '編輯字段詳情',
        'Customer interface does not support internal article types.' => '用戶界面不支援内部信件類型。',

        # JS File: Core.Agent.CustomerInformationCenterSearch
        'Loading...' => '加載中...',

        # JS File: Core.Agent.CustomerSearch
        'Duplicated entry' => '重復條目',
        'It is going to be deleted from the field, please try again.' => '將自動刪除這個重復的地址，請再試一次。',

        # JS File: Core.Agent.Daemon
        'Information about the OTRS Daemon' => '',

        # JS File: Core.Agent.Dashboard
        'Please check the fields marked as red for valid inputs.' => '',
        'All-day' => '',
        'Jan' => '一月',
        'Feb' => '二月',
        'Mar' => '三月',
        'Apr' => '四月',
        'May' => '五月',
        'Jun' => '六月',
        'Jul' => '七月',
        'Aug' => '八月',
        'Sep' => '九月',
        'Oct' => '十月',
        'Nov' => '十一月',
        'Dec' => '十二月',
        'January' => '一月',
        'February' => '二月',
        'March' => '三月',
        'April' => '四月',
        'May_long' => '五月',
        'June' => '六月',
        'July' => '七月',
        'August' => '八月',
        'September' => '九月',
        'October' => '十月',
        'November' => '十一月',
        'December' => '十二月',
        'Sunday' => '星期天',
        'Monday' => '星期一',
        'Tuesday' => '星期二',
        'Wednesday' => '星期三',
        'Thursday' => '星期四',
        'Friday' => '星期五',
        'Saturday' => '星期六',
        'Su' => '日',
        'Mo' => '一',
        'Tu' => '二',
        'We' => '三',
        'Th' => '四',
        'Fr' => '五',
        'Sa' => '六',
        'month' => '月',

        # JS File: Core.Agent.Responsive
        'Switch to desktop mode' => '',

        # JS File: Core.Agent.Search
        'Please remove the following words from your search as they cannot be searched for:' =>
            '',

        # JS File: Core.Agent.TicketAction
        'Please perform a spell check on the the text first.' => '',
        'Close this dialog' => '關閉該對話',
        'Do you really want to continue?' => '',

        # JS File: Core.Agent
        'Slide the navigation bar' => '',
        'Please turn off Compatibility Mode in Internet Explorer!' => '',

        # JS File: Core.App.Responsive
        'Switch to mobile mode' => '',

        # JS File: Core.Form.Validate
        'One or more errors occurred!' => '一個或多個錯誤!',

        # JS File: Core.Installer
        'Mail check successful.' => '郵件配置檢查完成',
        'Error in the mail settings. Please correct and try again.' => '郵件設置錯誤, 請重新修正.',

        # JS File: Core.UI.Datepicker
        'Previous' => '上一步',
        'Sun' => '日',
        'Mon' => '一',
        'Tue' => '三月',
        'Wed' => '',
        'Thu' => '收件人',
        'Fri' => '五',
        'Sat' => '六',
        'Open date selection' => '打開日歷',
        'Invalid date (need a future date)!' => '無效的日期（需使用未來的日期）！',
        'Invalid date (need a past date)!' => '',
        'Invalid date!' => '無效日期!',

        # JS File: Core.UI.InputFields
        'Not available' => '',
        'and %s more...' => '',
        'Clear all' => '',
        'Filters' => '',
        'Confirm' => '',
        'Clear search' => '',

        # JS File: Core.UI.Popup
        'If you now leave this page, all open popup windows will be closed, too!' =>
            '如果您現在離開該頁, 所有彈出的窗口也隨之關閉!',
        'A popup of this screen is already open. Do you want to close it and load this one instead?' =>
            '一個彈出窗口已經打開，是否繼續關閉？',
        'Could not open popup window. Please disable any popup blockers for this application.' =>
            '無法打開彈出窗口，請禁用彈出窗口攔截。',

        # JS File: Core.UI.TreeSelection
        'There are currently no elements available to select from.' => '目前沒有可供選擇的元素。',

        # SysConfig
        '
Dear Customer,

Unfortunately we could not detect a valid ticket number
in your subject, so this email can\'t be processed.

Please create a new ticket via the customer panel.

Thanks for your help!

 Your Helpdesk Team
' => '',
        ' (work units)' => '',
        ' 2 minutes' => ' 2 分鐘',
        ' 5 minutes' => ' 5 分鐘',
        ' 7 minutes' => ' 7 分鐘',
        '"%s" notification was sent to "%s" by "%s".' => '',
        '"Slim" skin which tries to save screen space for power users.' =>
            '',
        '%s' => '%s',
        '%s time unit(s) accounted. Now total %s time unit(s).' => '%s time unit(s) accounted. Now total %s time unit(s).',
        '(UserLogin) Firstname Lastname' => '',
        '(UserLogin) Lastname Firstname' => '',
        '(UserLogin) Lastname, Firstname' => '',
        '*** out of office until %s (%s d left) ***' => '',
        '10 minutes' => '10 分鐘',
        '100 (Expert)' => '',
        '15 minutes' => '15 分鐘',
        '200 (Advanced)' => '',
        '300 (Beginner)' => '',
        'A TicketWatcher Module.' => '',
        'A Website' => '',
        'A list of dynamic fields that are merged into the main ticket during a merge operation. Only dynamic fields that are empty in the main ticket will be set.' =>
            '',
        'A picture' => '',
        'ACL module that allows closing parent tickets only if all its children are already closed ("State" shows which states are not available for the parent ticket until all child tickets are closed).' =>
            '',
        'Access Control Lists (ACL)' => '訪問控制列表(ACL)',
        'AccountedTime' => '佔用時間',
        'Activates a blinking mechanism of the queue that contains the oldest ticket.' =>
            '',
        'Activates lost password feature for agents, in the agent interface.' =>
            '',
        'Activates lost password feature for customers.' => '',
        'Activates support for customer groups.' => '',
        'Activates the article filter in the zoom view to specify which articles should be shown.' =>
            '',
        'Activates the available themes on the system. Value 1 means active, 0 means inactive.' =>
            '',
        'Activates the ticket archive system search in the customer interface.' =>
            '',
        'Activates the ticket archive system to have a faster system by moving some tickets out of the daily scope. To search for these tickets, the archive flag has to be enabled in the ticket search.' =>
            '',
        'Activates time accounting.' => '',
        'ActivityID' => '',
        'Add a note to this ticket' => '添加工單備註',
        'Add an inbound phone call to this ticket' => '',
        'Add an outbound phone call to this ticket' => '',
        'Added email. %s' => 'Added email. %s',
        'Added link to ticket "%s".' => 'Added link to ticket "%s".',
        'Added note (%s)' => 'Added note (%s)',
        'Added subscription for user "%s".' => 'Added subscription for user "%s".',
        'Address book of CustomerUser sources.' => '',
        'Adds a suffix with the actual year and month to the OTRS log file. A logfile for every month will be created.' =>
            '',
        'Adds customers email addresses to recipients in the ticket compose screen of the agent interface. The customers email address won\'t be added if the article type is email-internal.' =>
            '',
        'Adds the one time vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the one time vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days for the indicated calendar. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Adds the permanent vacation days. Please use single digit pattern for numbers from 1 to 9 (instead of 01 - 09).' =>
            '',
        'Admin Area.' => '',
        'After' => '',
        'Agent Customer Search' => '',
        'Agent Customer Search.' => '',
        'Agent Name' => '',
        'Agent Name + FromSeparator + System Address Display Name' => '',
        'Agent Preferences.' => '',
        'Agent User Search' => '',
        'Agent User Search.' => '',
        'Agent called customer.' => 'Agent called customer.',
        'Agent interface article notification module to check PGP.' => '',
        'Agent interface article notification module to check S/MIME.' =>
            '',
        'Agent interface module to access CIC search via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to access fulltext search via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to access search profiles via nav bar. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface module to check incoming emails in the Ticket-Zoom-View if the S/MIME-key is available and true.' =>
            '',
        'Agent interface notification module to see the number of locked tickets. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of tickets an agent is responsible for. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of tickets in My Services. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Agent interface notification module to see the number of watched tickets. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'AgentTicketZoom widget that displays a table of objects linked to the ticket.' =>
            '',
        'AgentTicketZoom widget that displays customer information for the ticket in the side bar.' =>
            '',
        'AgentTicketZoom widget that displays ticket data in the side bar.' =>
            '',
        'Agents <-> Groups' => '服務人員 <-> 組',
        'Agents <-> Roles' => '服務人員 <-> 角色',
        'All customer users of a CustomerID' => '',
        'All escalated tickets' => '所有升級的工單',
        'All new tickets, these tickets have not been worked on yet' => '所有新建工單，這些工單目前還沒有被處理',
        'All open tickets, these tickets have already been worked on, but need a response' =>
            '所有正在處理中且需要回復的工單',
        'All tickets with a reminder set where the reminder date has been reached' =>
            '所有提醒時間已過的工單',
        'Allows adding notes in the close ticket screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket free text screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket note screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket owner screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket pending screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket priority screen of a zoomed ticket in the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows adding notes in the ticket responsible screen of the agent interface. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Allows agents to exchange the axis of a stat if they generate one.' =>
            '',
        'Allows agents to generate individual-related stats.' => '',
        'Allows choosing between showing the attachments of a ticket in the browser (inline) or just make them downloadable (attachment).' =>
            '',
        'Allows choosing the next compose state for customer tickets in the customer interface.' =>
            '',
        'Allows customers to change the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket SLA in the customer interface.' =>
            '',
        'Allows customers to set the ticket priority in the customer interface.' =>
            '',
        'Allows customers to set the ticket queue in the customer interface. If this is set to \'No\', QueueDefault should be configured.' =>
            '',
        'Allows customers to set the ticket service in the customer interface.' =>
            '',
        'Allows customers to set the ticket type in the customer interface. If this is set to \'No\', TicketTypeDefault should be configured.' =>
            '',
        'Allows default services to be selected also for non existing customers.' =>
            '',
        'Allows defining new types for ticket (if ticket type feature is enabled).' =>
            '',
        'Allows defining services and SLAs for tickets (e. g. email, desktop, network, ...), and escalation attributes for SLAs (if ticket service/SLA feature is enabled).' =>
            '',
        'Allows extended search conditions in ticket search of the agent interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows extended search conditions in ticket search of the customer interface. With this feature you can search e. g. with this kind of conditions like "(key1&&key2)" or "(key1||key2)".' =>
            '',
        'Allows having a medium format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows having a small format ticket overview (CustomerInfo => 1 - shows also the customer information).' =>
            '',
        'Allows invalid agents to generate individual-related stats.' => '',
        'Allows the administrators to login as other customers, via the customer user administration panel.' =>
            '',
        'Allows the administrators to login as other users, via the users administration panel.' =>
            '',
        'Allows to set a new ticket state in the move ticket screen of the agent interface.' =>
            '',
        'Always show RichText if available' => '',
        'Answer' => '回復',
        'Arabic (Saudi Arabia)' => '',
        'Archive state changed: "%s"' => '',
        'ArticleTree' => '',
        'Attachments <-> Templates' => '附件 <-> 模板',
        'Auto Responses <-> Queues' => '自動回復 <-> 隊列',
        'AutoFollowUp sent to "%s".' => 'AutoFollowUp sent to "%s".',
        'AutoReject sent to "%s".' => 'AutoReject sent to "%s".',
        'AutoReply sent to "%s".' => 'AutoReply sent to "%s".',
        'Automated line break in text messages after x number of chars.' =>
            '',
        'Automatically change the state of a ticket with an invalid owner once it is unlocked. Maps from a state type to a new ticket state.' =>
            '',
        'Automatically lock and set owner to current Agent after opening the move ticket screen of the agent interface.' =>
            '',
        'Automatically lock and set owner to current Agent after selecting for an Bulk Action.' =>
            '',
        'Automatically sets the owner of a ticket as the responsible for it (if ticket responsible feature is enabled). This will only work by manually actions of the logged in user. It does not work for automated actions e.g. GenericAgent, Postmaster and GenericInterface.' =>
            '',
        'Automatically sets the responsible of a ticket (if it is not set yet) after the first owner update.' =>
            '',
        'Balanced white skin by Felix Niklas (slim version).' => '',
        'Balanced white skin by Felix Niklas.' => '',
        'Based on global RichText setting' => '',
        'Basic fulltext index settings. Execute "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild" in order to generate a new index.' =>
            '',
        'Blocks all the incoming emails that do not have a valid ticket number in subject with From: @example.com address.' =>
            '',
        'Bounced to "%s".' => 'Bounced to "%s".',
        'Builds an article index right after the article\'s creation.' =>
            '',
        'Bulgarian' => '',
        'Bulk Action' => '批量處理',
        'CMD example setup. Ignores emails where external CMD returns some output on STDOUT (email will be piped into STDIN of some.bin).' =>
            '',
        'CSV Separator' => 'CSV分隔符',
        'Cache time in seconds for agent authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for customer authentication in the GenericInterface.' =>
            '',
        'Cache time in seconds for the DB ACL backend.' => '',
        'Cache time in seconds for the DB process backend.' => '',
        'Cache time in seconds for the SSL certificate attributes.' => '',
        'Cache time in seconds for the ticket process navigation bar output module.' =>
            '',
        'Cache time in seconds for the web service config backend.' => '',
        'Catalan' => '',
        'Change password' => '修改密碼',
        'Change queue!' => '轉移隊列',
        'Change the customer for this ticket' => '更改該工單用戶',
        'Change the free fields for this ticket' => '修改自定義字段',
        'Change the owner for this ticket' => '更改工單所有者',
        'Change the priority for this ticket' => '更改工單優先級',
        'Change the responsible for this ticket' => '',
        'Changed priority from "%s" (%s) to "%s" (%s).' => 'Changed priority from "%s" (%s) to "%s" (%s).',
        'Changes the owner of tickets to everyone (useful for ASP). Normally only agent with rw permissions in the queue of the ticket will be shown.' =>
            '',
        'Checkbox' => '複選框',
        'Checks if an E-Mail is a followup to an existing ticket by searching the subject for a valid ticket number.' =>
            '',
        'Checks the SystemID in ticket number detection for follow-ups (use "No" if SystemID has been changed after using the system).' =>
            '',
        'Checks the availability of OTRS Business Solution™ for this system.' =>
            '',
        'Checks the entitlement status of OTRS Business Solution™.' => '',
        'Child' => '子',
        'Chinese (Simplified)' => '',
        'Chinese (Traditional)' => '',
        'Choose for which kind of ticket changes you want to receive notifications.' =>
            '',
        'Christmas Eve' => '平安夜',
        'Close this ticket' => '關閉工單',
        'Closed tickets (customer user)' => '',
        'Closed tickets (customer)' => '',
        'Cloud Services' => '',
        'Cloud service admin module registration for the transport layer.' =>
            '',
        'Collect support data for asynchronous plug-in modules.' => '',
        'Column ticket filters for Ticket Overviews type "Small".' => '工單概覽“小”模式列表字段過濾器',
        'Columns that can be filtered in the escalation view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the locked view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the queue view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the responsible view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the service view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the status view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the ticket search result view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Columns that can be filtered in the watch view of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note: Only Ticket attributes, Dynamic Fields (DynamicField_NameX) and Customer attributes (e.g. CustomerUserPhone, CustomerCompanyName, ...) are allowed.' =>
            '',
        'Comment for new history entries in the customer interface.' => '',
        'Comment2' => '',
        'Communication' => '',
        'Company Status' => '',
        'Company Tickets' => '單位工單',
        'Company Tickets.' => '',
        'Company name which will be included in outgoing emails as an X-Header.' =>
            '',
        'Compat module for AgentZoom to AgentTicketZoom.' => '',
        'Complex' => '',
        'Compose' => '撰寫',
        'Configure Processes.' => '配置流程',
        'Configure and manage ACLs.' => '配置和管理ACLs',
        'Configure any additional readonly mirror databases that you want to use.' =>
            '',
        'Configure sending of support data to OTRS Group for improved support.' =>
            '',
        'Configure which screen should be shown after a new ticket has been created.' =>
            '',
        'Configure your own log text for PGP.' => '',
        'Configures a default TicketDynamicField setting. "Name" defines the dynamic field which should be used, "Value" is the data that will be set, and "Event" defines the trigger event. Please check the developer manual (http://otrs.github.io/doc/), chapter "Ticket Event Module".' =>
            '',
        'Controls how to display the ticket history entries as readable values.' =>
            '',
        'Controls if CutomerID is editable in the agent interface.' => '',
        'Controls if customers have the ability to sort their tickets.' =>
            '',
        'Controls if more than one from entry can be set in the new phone ticket in the agent interface.' =>
            '',
        'Controls if the admin is allowed to import a saved system configuration in SysConfig.' =>
            '',
        'Controls if the admin is allowed to make changes to the database via AdminSelectBox.' =>
            '',
        'Controls if the ticket and article seen flags are removed when a ticket is archived.' =>
            '',
        'Converts HTML mails into text messages.' => '將HTML郵件轉換為文本信息.',
        'Create New process ticket.' => '',
        'Create and manage Service Level Agreements (SLAs).' => '創建和管理服務品質協議(SLA)',
        'Create and manage agents.' => '創建和管理服務人員.',
        'Create and manage attachments.' => '創建和管理附件.',
        'Create and manage customer users.' => '創建和管理用戶',
        'Create and manage customers.' => '創建和管理用戶單位',
        'Create and manage dynamic fields.' => '創建和管理動態字段',
        'Create and manage groups.' => '創建和管理組.',
        'Create and manage queues.' => '創建和管理隊列.',
        'Create and manage responses that are automatically sent.' => '創建和管理自動回復.',
        'Create and manage roles.' => '創建和管理角色.',
        'Create and manage salutations.' => '創建和管理郵件開頭的問候語.',
        'Create and manage services.' => '創建和管理服務',
        'Create and manage signatures.' => '創建和管理簽名',
        'Create and manage templates.' => '創建和管理模板',
        'Create and manage ticket notifications.' => '',
        'Create and manage ticket priorities.' => '創建和管理工單優先級别.',
        'Create and manage ticket states.' => '創建和管理工單狀態',
        'Create and manage ticket types.' => '創建和管理工單類型. ',
        'Create and manage web services.' => '創建和管理Web服務',
        'Create new Ticket.' => '',
        'Create new email ticket and send this out (outbound).' => '',
        'Create new email ticket.' => '',
        'Create new phone ticket (inbound).' => '',
        'Create new phone ticket.' => '',
        'Create new process ticket.' => '',
        'Create tickets.' => '',
        'Croatian' => '',
        'Custom RSS Feed' => '',
        'Custom text for the page shown to customers that have no tickets yet (if you need those text translated add them to a custom translation module).' =>
            '',
        'Customer Administration' => '',
        'Customer Companies' => '用戶單位',
        'Customer Information Center Search.' => '',
        'Customer Information Center.' => '',
        'Customer Ticket Print Module.' => '',
        'Customer User <-> Groups' => '用戶 <-> 組',
        'Customer User <-> Services' => '用戶 <-> 服務',
        'Customer User Administration' => '用戶管理',
        'Customer Users' => '用戶',
        'Customer called us.' => 'Customer called us.',
        'Customer item (icon) which shows the closed tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer item (icon) which shows the open tickets of this customer as info block. Setting CustomerUserLogin to 1 searches for tickets based on login name rather than CustomerID.' =>
            '',
        'Customer preferences.' => '',
        'Customer request via web.' => 'Customer request via web.',
        'Customer ticket overview' => '',
        'Customer ticket search.' => '',
        'Customer ticket zoom' => '',
        'Customer user search' => '',
        'CustomerID search' => '',
        'CustomerName' => '用戶名',
        'CustomerUser' => '',
        'Customers <-> Groups' => '用戶 <-> 組',
        'Customizable stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Czech' => '',
        'Danish' => '',
        'Data used to export the search result in CSV format.' => '',
        'Date / Time' => '日期 / 時間',
        'Debug' => '',
        'Debugs the translation set. If this is set to "Yes" all strings (text) without translations are written to STDERR. This can be helpful when you are creating a new translation file. Otherwise, this option should remain set to "No".' =>
            '',
        'Default' => '',
        'Default (Slim)' => '',
        'Default ACL values for ticket actions.' => '',
        'Default ProcessManagement entity prefixes for entity IDs that are automatically generated.' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimePointFormat=year;TicketCreateTimePointStart=Last;TicketCreateTimePoint=2;".' =>
            '',
        'Default data to use on attribute for ticket search screen. Example: "TicketCreateTimeStartYear=2010;TicketCreateTimeStartMonth=10;TicketCreateTimeStartDay=4;TicketCreateTimeStopYear=2010;TicketCreateTimeStopMonth=11;TicketCreateTimeStopDay=3;".' =>
            '',
        'Default display type for recipient (To,Cc) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default display type for sender (From) names in AgentTicketZoom and CustomerTicketZoom.' =>
            '',
        'Default loop protection module.' => '',
        'Default queue ID used by the system in the agent interface.' => '',
        'Default skin for the agent interface (slim version).' => '',
        'Default skin for the agent interface.' => '',
        'Default skin for the customer interface.' => '',
        'Default spelling dictionary' => '默認字典',
        'Default ticket ID used by the system in the agent interface.' =>
            '',
        'Default ticket ID used by the system in the customer interface.' =>
            '',
        'Default value for NameX' => '',
        'Define a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Define a mapping between variables of the customer user data (keys) and dynamic fields of a ticket (values). The purpose is to store customer user data in ticket dynamic fields. The dynamic fields must be present in the system and should be enabled for AgentTicketFreeText, so that they can be set/updated manually by the agent. They mustn\'t be enabled for AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer. If they were, they would have precedence over the automatically set values. To use this mapping, you have to also activate the next setting below.' =>
            '',
        'Define dynamic field name for end time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define dynamic field name for start time. This field has to be manually added to the system as Ticket: "Date / Time" and must be activated in ticket creation screens and/or in any other ticket action screens.' =>
            '',
        'Define the max depth of queues.' => '',
        'Define the queue comment 2.' => '',
        'Define the service comment 2.' => '',
        'Define the sla comment 2.' => '',
        'Define the start day of the week for the date picker for the indicated calendar.' =>
            '',
        'Define the start day of the week for the date picker.' => '',
        'Defines a customer item, which generates a LinkedIn icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a XING icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google icon at the end of a customer info block.' =>
            '',
        'Defines a customer item, which generates a google maps icon at the end of a customer info block.' =>
            '',
        'Defines a default list of words, that are ignored by the spell checker.' =>
            '',
        'Defines a filter for html output to add links behind CVE numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind MSBulletin numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind a defined string. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter for html output to add links behind bugtraq numbers. The element Image allows two input kinds. At once the name of an image (e.g. faq.png). In this case the OTRS image path will be used. The second possiblity is to insert the link to the image.' =>
            '',
        'Defines a filter to collect CVE numbers from article texts in AgentTicketZoom. The results will be displayed in a meta box next to the article. Fill in URLPreview if you would like to see a preview when moving your mouse cursor above the link element. This could be the same URL as in URL, but also an alternate one. Please note that some websites deny being displayed within an iframe (e.g. Google) and thus won\'t work with the preview mode.' =>
            '',
        'Defines a filter to process the text in the articles, in order to highlight predefined keywords.' =>
            '',
        'Defines a regular expression that excludes some addresses from the syntax check (if "CheckEmailAddresses" is set to "Yes"). Please enter a regex in this field for email addresses, that aren\'t syntactically valid, but are necessary for the system (i.e. "root@localhost").' =>
            '',
        'Defines a regular expression that filters all email addresses that should not be used in the application.' =>
            '',
        'Defines a sleep time in microseconds between tickets while they are been processed by a job.' =>
            '',
        'Defines a useful module to load specific user options or to display news.' =>
            '',
        'Defines all the X-headers that should be scanned.' => '',
        'Defines all the languages that are available to the application. Specify only English names of languages here.' =>
            '',
        'Defines all the languages that are available to the application. Specify only native names of languages here.' =>
            '',
        'Defines all the parameters for the RefreshTime object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for the ShownTickets object in the customer preferences of the customer interface.' =>
            '',
        'Defines all the parameters for this item in the customer preferences.' =>
            '',
        'Defines all the parameters for this notification transport.' => '',
        'Defines all the possible stats output formats.' => '',
        'Defines an alternate URL, where the login link refers to.' => '',
        'Defines an alternate URL, where the logout link refers to.' => '',
        'Defines an alternate login URL for the customer panel..' => '',
        'Defines an alternate logout URL for the customer panel.' => '',
        'Defines an external link to the database of the customer (e.g. \'http://yourhost/customer.php?CID=[% Data.CustomerID %]\' or \'\').' =>
            '',
        'Defines default headers for outgoing emails.' => '',
        'Defines from which ticket attributes the agent can select the result order.' =>
            '',
        'Defines how the From field from the emails (sent from answers and email tickets) should look like.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the queue view.' =>
            '',
        'Defines if a pre-sorting by priority should be done in the service view.' =>
            '',
        'Defines if a ticket lock is required in the close ticket screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the email outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket bounce screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket compose screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket forward screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket free text screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket merge screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket note screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket owner screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket pending screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone inbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket phone outbound screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket priority screen of a zoomed ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required in the ticket responsible screen of the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if a ticket lock is required to change the customer of a ticket in the agent interface (if the ticket isn\'t locked yet, the ticket gets locked and the current agent will be set automatically as its owner).' =>
            '',
        'Defines if agents should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if composed messages have to be spell checked in the agent interface.' =>
            '',
        'Defines if customers should be allowed to login if they have no shared secret stored in their preferences and therefore are not using two-factor authentication.' =>
            '',
        'Defines if the enhanced mode should be used (enables use of table, replace, subscript, superscript, paste from word, etc.).' =>
            '',
        'Defines if the previously valid token should be accepted for authentication. This is slightly less secure but gives users 30 seconds more time to enter their one-time password.' =>
            '',
        'Defines if the values for filters should be retrieved from all available tickets. If set to "Yes", only values which are actually used in any ticket will be available for filtering. Please note: The list of customers will always be retrieved like this.' =>
            '',
        'Defines if time accounting is mandatory in the agent interface. If activated, a note must be entered for all ticket actions (no matter if the note itself is configured as active or is originally mandatory for the individual ticket action screen).' =>
            '',
        'Defines if time accounting must be set to all tickets in bulk action.' =>
            '',
        'Defines out of office message template. Two string parameters (%s) available: end date and number of days left.' =>
            '',
        'Defines queues that\'s tickets are used for displaying as calendar events.' =>
            '',
        'Defines the IP regular expression for accessing the local repository. You need to enable this to have access to your local repository and the package::RepositoryList is required on the remote host.' =>
            '',
        'Defines the URL CSS path.' => '',
        'Defines the URL base path of icons, CSS and Java Script.' => '',
        'Defines the URL image path of icons for navigation.' => '',
        'Defines the URL java script path.' => '',
        'Defines the URL rich text editor path.' => '',
        'Defines the address of a dedicated DNS server, if necessary, for the "CheckMXRecord" look-ups.' =>
            '',
        'Defines the agent preferences key where the shared secret key is stored.' =>
            '',
        'Defines the body text for notification mails sent to agents, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to agents, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, about new account.' =>
            '',
        'Defines the body text for notification mails sent to customers, about new password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for notification mails sent to customers, with token about new requested password (after using this link the new password will be sent).' =>
            '',
        'Defines the body text for rejected emails.' => '',
        'Defines the calendar width in percent. Default is 95%.' => '',
        'Defines the cluster node identifier. This is only used in cluster configurations where there is more than one OTRS frontend system. Note: only values from 1 to 99 are allowed.' =>
            '',
        'Defines the column to store the keys for the preferences table.' =>
            '',
        'Defines the config options for the autocompletion feature.' => '',
        'Defines the config parameters of this item, to be shown in the preferences view.' =>
            '',
        'Defines the config parameters of this item, to be shown in the preferences view. Take care to maintain the dictionaries installed in the system in the data section.' =>
            '',
        'Defines the connections for http/ftp, via a proxy.' => '',
        'Defines the customer preferences key where the shared secret key is stored.' =>
            '',
        'Defines the date input format used in forms (option or input fields).' =>
            '',
        'Defines the default CSS used in rich text editors.' => '',
        'Defines the default auto response type of the article for this operation.' =>
            '',
        'Defines the default body of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default front-end (HTML) theme to be used by the agents and customers. If you like, you can add your own theme. Please refer the administrator manual located at http://otrs.github.io/doc/.' =>
            '',
        'Defines the default front-end language. All the possible values are determined by the available language files on the system (see the next setting).' =>
            '',
        'Defines the default history type in the customer interface.' => '',
        'Defines the default maximum number of X-axis attributes for the time scale.' =>
            '',
        'Defines the default maximum number of statistics per page on the overview screen.' =>
            '',
        'Defines the default next state for a ticket after customer follow-up in the customer interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after being forwarded, in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket after the message has been sent, in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default next state of a ticket if it is composed / answered in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default note body text for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default priority of follow-up customer tickets in the ticket zoom screen in the customer interface.' =>
            '',
        'Defines the default priority of new customer tickets in the customer interface.' =>
            '',
        'Defines the default priority of new tickets.' => '',
        'Defines the default queue for new customer tickets in the customer interface.' =>
            '',
        'Defines the default selection at the drop down menu for dynamic objects (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for permissions (Form: Common Specification).' =>
            '',
        'Defines the default selection at the drop down menu for stats format (Form: Common Specification). Please insert the format key (see Stats::Format).' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default sender type for tickets in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen (AllTickets/ArchivedTickets/NotArchivedTickets).' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen.' =>
            '',
        'Defines the default shown ticket search attribute for ticket search screen. Example: "Key" must have the name of the Dynamic Field in this case \'X\', "Content" must have the value of the Dynamic Field depending on the Dynamic Field type,  Text: \'a text\', Dropdown: \'1\', Date/Time: \'Search_DynamicField_XTimeSlotStartYear=1974; Search_DynamicField_XTimeSlotStartMonth=01; Search_DynamicField_XTimeSlotStartDay=26; Search_DynamicField_XTimeSlotStartHour=00; Search_DynamicField_XTimeSlotStartMinute=00; Search_DynamicField_XTimeSlotStartSecond=00; Search_DynamicField_XTimeSlotStopYear=2013; Search_DynamicField_XTimeSlotStopMonth=01; Search_DynamicField_XTimeSlotStopDay=26; Search_DynamicField_XTimeSlotStopHour=23; Search_DynamicField_XTimeSlotStopMinute=59; Search_DynamicField_XTimeSlotStopSecond=59;\' and or \'Search_DynamicField_XTimePointFormat=week; Search_DynamicField_XTimePointStart=Before; Search_DynamicField_XTimePointValue=7\';.' =>
            '',
        'Defines the default sort criteria for all queues displayed in the queue view.' =>
            '',
        'Defines the default sort criteria for all services displayed in the service view.' =>
            '',
        'Defines the default sort order for all queues in the queue view, after priority sort.' =>
            '',
        'Defines the default sort order for all services in the service view, after priority sort.' =>
            '',
        'Defines the default spell checker dictionary.' => '',
        'Defines the default state of new customer tickets in the customer interface.' =>
            '',
        'Defines the default state of new tickets.' => '',
        'Defines the default subject for phone tickets in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default subject for phone tickets in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default subject of a note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default the number of seconds (from current time) to re-schedule a generic interface failed task.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in a ticket search of the customer interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the escalation view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the locked ticket view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the responsible view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the status view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting in the watch view of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of the agent interface.' =>
            '',
        'Defines the default ticket attribute for ticket sorting of the ticket search result of this operation.' =>
            '',
        'Defines the default ticket bounced notification for customer/sender in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default ticket next state after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default ticket order (after priority sort) in the escalation view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order (after priority sort) in the status view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the responsible view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket locked view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the ticket search result of the this operation. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order in the watch view of the agent interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket order of a search result in the customer interface. Up: oldest on top. Down: latest on top.' =>
            '',
        'Defines the default ticket priority in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default ticket priority in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default ticket type for new customer tickets in the customer interface.' =>
            '',
        'Defines the default ticket type.' => '',
        'Defines the default type for article in the customer interface.' =>
            '',
        'Defines the default type of forwarded message in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the default type of the article for this operation.' => '',
        'Defines the default type of the message in the email outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the close ticket screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket note screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the default type of the note in the ticket zoom screen of the customer interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the agent interface.' =>
            '',
        'Defines the default used Frontend-Module if no Action parameter given in the url on the customer interface.' =>
            '',
        'Defines the default value for the action parameter for the public frontend. The action parameter is used in the scripts of the system.' =>
            '',
        'Defines the default viewable sender types of a ticket (default: customer).' =>
            '',
        'Defines the dynamic fields that are used for displaying on calendar events.' =>
            '',
        'Defines the fall-back path to open fetchmail binary. Note: The name of the binary needs to be \'fetchmail\', if it is different please use a symbolic link.' =>
            '',
        'Defines the filter that processes the text in the articles, in order to highlight URLs.' =>
            '',
        'Defines the format of responses in the ticket compose screen of the agent interface ([% Data.OrigFrom | html %] is From 1:1, [% Data.OrigFromName | html %] is only realname of From).' =>
            '',
        'Defines the fully qualified domain name of the system. This setting is used as a variable, OTRS_CONFIG_FQDN which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the groups every customer user will be in (if CustomerGroupSupport is enabled and you don\'t want to manage every user for these groups).' =>
            '',
        'Defines the height for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the height for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the history comment for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history comment for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history comment for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history comment for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the close ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the email ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the phone ticket screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket free text screen action, which gets used for ticket history.' =>
            '',
        'Defines the history type for the ticket note screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket owner screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket pending screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone inbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket phone outbound screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket priority screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket responsible screen action, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the history type for the ticket zoom action, which gets used for ticket history in the customer interface.' =>
            '',
        'Defines the history type for this operation, which gets used for ticket history in the agent interface.' =>
            '',
        'Defines the hours and week days of the indicated calendar, to count the working time.' =>
            '',
        'Defines the hours and week days to count the working time.' => '',
        'Defines the key to be checked with Kernel::Modules::AgentInfo module. If this user preferences key is true, the message is accepted by the system.' =>
            '',
        'Defines the key to check with CustomerAccept. If this user preferences key is true, then the message is accepted by the system.' =>
            '',
        'Defines the link type \'Normal\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type \'ParentChild\'. If the source name and the target name contain the same value, the resulting link is a non-directional one; otherwise, the result is a directional link.' =>
            '',
        'Defines the link type groups. The link types of the same group cancel one another. Example: If ticket A is linked per a \'Normal\' link with ticket B, then these tickets could not be additionally linked with link of a \'ParentChild\' relationship.' =>
            '',
        'Defines the list of online repositories. Another installations can be used as repository, for example: Key="http://example.com/otrs/public.pl?Action=PublicRepository;File=" and Content="Some Name".' =>
            '',
        'Defines the list of possible next actions on an error screen, a full path is required, then is possible to add external links if needed.' =>
            '',
        'Defines the list of types for templates.' => '',
        'Defines the location to get online repository list for additional packages. The first available result will be used.' =>
            '',
        'Defines the log module for the system. "File" writes all messages in a given logfile, "SysLog" uses the syslog daemon of the system, e.g. syslogd.' =>
            '',
        'Defines the maximal size (in bytes) for file uploads via the browser. Warning: Setting this option to a value which is too low could cause many masks in your OTRS instance to stop working (probably any mask which takes input from the user).' =>
            '',
        'Defines the maximal valid time (in seconds) for a session id.' =>
            '',
        'Defines the maximum number of affected tickets per job.' => '',
        'Defines the maximum number of pages per PDF file.' => '',
        'Defines the maximum number of quoted lines to be added to responses.' =>
            '',
        'Defines the maximum number of tasks to be executed as the same time.' =>
            '',
        'Defines the maximum size (in MB) of the log file.' => '',
        'Defines the maximum size in KiloByte of GenericInterface responses that get logged to the gi_debugger_entry_content table.' =>
            '',
        'Defines the module that shows a generic notification in the agent interface. Either "Text" - if configured - or the contents of "File" will be displayed.' =>
            '',
        'Defines the module that shows all the currently loged in customers in the agent interface.' =>
            '',
        'Defines the module that shows all the currently logged in agents in the agent interface.' =>
            '',
        'Defines the module that shows the currently loged in agents in the customer interface.' =>
            '',
        'Defines the module that shows the currently loged in customers in the customer interface.' =>
            '',
        'Defines the module to authenticate customers.' => '',
        'Defines the module to display a notification if cloud services are disabled.' =>
            '',
        'Defines the module to display a notification in different interfaces on different occasions for OTRS Business Solution™.' =>
            '',
        'Defines the module to display a notification in the agent interface if the OTRS Daemon is not running.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent has not yet selected a time zone.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having out-of-office active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the agent is logged in while having system maintenance active.' =>
            '',
        'Defines the module to display a notification in the agent interface, if the system is used by the admin user (normally you shouldn\'t work as admin).' =>
            '',
        'Defines the module to display a notification in the customer interface, if the customer is logged in while having system maintenance active.' =>
            '',
        'Defines the module to display a notification in the customer interface, if the customer user has not yet selected a time zone.' =>
            '',
        'Defines the module to generate code for periodic page reloads.' =>
            '',
        'Defines the module to send emails. "Sendmail" directly uses the sendmail binary of your operating system. Any of the "SMTP" mechanisms use a specified (external) mailserver. "DoNotSendEmail" doesn\'t send emails and it is useful for test systems.' =>
            '',
        'Defines the module used to store the session data. With "DB" the frontend server can be splitted from the db server. "FS" is faster.' =>
            '',
        'Defines the name of the application, shown in the web interface, tabs and title bar of the web browser.' =>
            '',
        'Defines the name of the column to store the data in the preferences table.' =>
            '',
        'Defines the name of the column to store the user identifier in the preferences table.' =>
            '',
        'Defines the name of the indicated calendar.' => '',
        'Defines the name of the key for customer sessions.' => '',
        'Defines the name of the session key. E.g. Session, SessionID or OTRS.' =>
            '',
        'Defines the name of the table where the user preferences are stored.' =>
            '',
        'Defines the next possible states after composing / answering a ticket in the ticket compose screen of the agent interface.' =>
            '',
        'Defines the next possible states after forwarding a ticket in the ticket forward screen of the agent interface.' =>
            '',
        'Defines the next possible states after sending a message in the email outbound screen of the agent interface.' =>
            '',
        'Defines the next possible states for customer tickets in the customer interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the close ticket screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket bulk screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket free text screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket note screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Defines the next state of a ticket after adding a note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being bounced, in the ticket bounce screen of the agent interface.' =>
            '',
        'Defines the next state of a ticket after being moved to another queue, in the move ticket screen of the agent interface.' =>
            '',
        'Defines the number of character per line used in case an HTML article preview replacement on TemplateGenerator for EventNotifications.' =>
            '',
        'Defines the number of days to keep the daemon log files.' => '',
        'Defines the number of header fields in frontend modules for add and update postmaster filters. It can be up to 99 fields.' =>
            '',
        'Defines the parameters for the customer preferences table.' => '',
        'Defines the parameters for the dashboard backend. "Cmd" is used to specify command with parameters. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTL" indicates the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the parameters for the dashboard backend. "Limit" defines the number of entries displayed by default. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" defines the cache expiration period in minutes for the plugin.' =>
            '',
        'Defines the password to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the path and TTF-File to handle bold italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle bold proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle italic proportional font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle monospaced font in PDF documents.' =>
            '',
        'Defines the path and TTF-File to handle proportional font in PDF documents.' =>
            '',
        'Defines the path of the shown info file, that is located under Kernel/Output/HTML/Templates/Standard/CustomerAccept.tt.' =>
            '',
        'Defines the path to PGP binary.' => '',
        'Defines the path to open ssl binary. It may need a HOME env ($ENV{HOME} = \'/var/lib/wwwrun\';).' =>
            '',
        'Defines the postmaster default queue.' => '',
        'Defines the priority in which the information is logged and presented.' =>
            '',
        'Defines the recipient target of the phone ticket and the sender of the email ticket ("Queue" shows all queues, "System address" displays all system addresses) in the agent interface.' =>
            '',
        'Defines the recipient target of the tickets ("Queue" shows all queues, "SystemAddress" shows only the queues which are assigned to system addresses) in the customer interface.' =>
            '',
        'Defines the required permission to show a ticket in the escalation view of the agent interface.' =>
            '',
        'Defines the search limit for the stats.' => '',
        'Defines the sender for rejected emails.' => '',
        'Defines the separator between the agents real name and the given queue email address.' =>
            '',
        'Defines the standard permissions available for customers within the application. If more permissions are needed, you can enter them here. Permissions must be hard coded to be effective. Please ensure, when adding any of the afore mentioned permissions, that the "rw" permission remains the last entry.' =>
            '',
        'Defines the standard size of PDF pages.' => '',
        'Defines the state of a ticket if it gets a follow-up and the ticket was already closed.' =>
            '',
        'Defines the state of a ticket if it gets a follow-up.' => '',
        'Defines the state type of the reminder for pending tickets.' => '',
        'Defines the subject for notification mails sent to agents, about new password.' =>
            '',
        'Defines the subject for notification mails sent to agents, with token about new requested password.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new account.' =>
            '',
        'Defines the subject for notification mails sent to customers, about new password.' =>
            '',
        'Defines the subject for notification mails sent to customers, with token about new requested password.' =>
            '',
        'Defines the subject for rejected emails.' => '',
        'Defines the system administrator\'s email address. It will be displayed in the error screens of the application.' =>
            '',
        'Defines the system identifier. Every ticket number and http session string contains this ID. This ensures that only tickets which belong to your system will be processed as follow-ups (useful when communicating between two instances of OTRS).' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'AsPopup PopupType_TicketAction\'.' =>
            '',
        'Defines the target attribute in the link to external customer database. E.g. \'target="cdb"\'.' =>
            '',
        'Defines the ticket fields that are going to be displayed calendar events. The "Key" defines the field or ticket attribute and the "Content" defines the display name.' =>
            '',
        'Defines the time zone of the indicated calendar, which can be assigned later to a specific queue.' =>
            '',
        'Defines the two-factor module to authenticate agents.' => '',
        'Defines the two-factor module to authenticate customers.' => '',
        'Defines the type of protocol, used by the web server, to serve the application. If https protocol will be used instead of plain http, it must be specified here. Since this has no affect on the web server\'s settings or behavior, it will not change the method of access to the application and, if it is wrong, it will not prevent you from logging into the application. This setting is only used as a variable, OTRS_CONFIG_HttpType which is found in all forms of messaging used by the application, to build links to the tickets within your system.' =>
            '',
        'Defines the used character for plaintext email quotes in the ticket compose screen of the agent interface. If this is empty or inactive, original emails will not be quoted but appended to the response.' =>
            '',
        'Defines the user identifier for the customer panel.' => '',
        'Defines the username to access the SOAP handle (bin/cgi-bin/rpc.pl).' =>
            '',
        'Defines the valid state types for a ticket.' => '',
        'Defines the valid states for unlocked tickets. To unlock tickets the script "bin/otrs.Console.pl Maint::Ticket::UnlockTimeout" can be used.' =>
            '',
        'Defines the viewable locks of a ticket. Default: unlock, tmp_lock.' =>
            '',
        'Defines the width for the rich text editor component for this screen. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines the width for the rich text editor component. Enter number (pixels) or percent value (relative).' =>
            '',
        'Defines which article sender types should be shown in the preview of a ticket.' =>
            '',
        'Defines which items are available for \'Action\' in third level of the ACL structure.' =>
            '',
        'Defines which items are available in first level of the ACL structure.' =>
            '',
        'Defines which items are available in second level of the ACL structure.' =>
            '',
        'Defines which states should be set automatically (Content), after the pending time of state (Key) has been reached.' =>
            '',
        'Defines wich article type should be expanded when entering the overview. If nothing defined, latest article will be expanded.' =>
            '',
        'Defines, which tickets of which ticket state types should not be listed in linked ticket lists.' =>
            '',
        'Delete expired cache from core modules.' => '',
        'Delete expired loader cache weekly (Sunday mornings).' => '',
        'Delete expired sessions.' => '',
        'Delete this ticket' => '刪除工單',
        'Deleted link to ticket "%s".' => 'Deleted link to ticket "%s".',
        'Deletes a session if the session id is used with an invalid remote IP address.' =>
            '',
        'Deletes requested sessions if they have timed out.' => '',
        'Deploy and manage OTRS Business Solution™.' => '',
        'Determines if the list of possible queues to move to ticket into should be displayed in a dropdown list or in a new window in the agent interface. If "New Window" is set you can add a move note to the ticket.' =>
            '',
        'Determines if the statistics module may generate ticket lists.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new email ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, after the creation of a new phone ticket in the agent interface.' =>
            '',
        'Determines the next possible ticket states, for process tickets in the agent interface.' =>
            '',
        'Determines the next screen after new customer ticket in the customer interface.' =>
            '',
        'Determines the next screen after the follow-up screen of a zoomed ticket in the customer interface.' =>
            '',
        'Determines the next screen after the ticket is moved. LastScreenOverview will return the last overview screen (e.g. search results, queueview, dashboard). TicketZoom will return to the TicketZoom.' =>
            '',
        'Determines the possible states for pending tickets that changed state after reaching time limit.' =>
            '',
        'Determines the strings that will be shown as recipient (To:) of the phone ticket and as sender (From:) of the email ticket in the agent interface. For Queue as NewQueueSelectionType "<Queue>" shows the names of the queues and for SystemAddress "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the strings that will be shown as recipient (To:) of the ticket in the customer interface. For Queue as CustomerPanelSelectionType, "<Queue>" shows the names of the queues, and for SystemAddress, "<Realname> <<Email>>" shows the name and email of the recipient.' =>
            '',
        'Determines the way the linked objects are displayed in each zoom mask.' =>
            '',
        'Determines which options will be valid of the recipient (phone ticket) and the sender (email ticket) in the agent interface.' =>
            '',
        'Determines which queues will be valid for ticket\'s recepients in the customer interface.' =>
            '',
        'Disable HTTP header "X-Frame-Options: SAMEORIGIN" to allow OTRS to be included as an IFrame in other websites. Disabling this HTTP header can be a security issue! Only disable it, if you know what you are doing!' =>
            '',
        'Disables sending reminder notifications to the responsible agent of a ticket (Ticket::Responsible needs to be activated).' =>
            '',
        'Disables the communication between this system and OTRS Group servers that provides cloud services. If active, some functionality will be lost such as system registration, support data sending, upgrading to and use of OTRS Business Solution™, OTRS Verify™, OTRS News and product News dashboard widgets, among others.' =>
            '',
        'Disables the web installer (http://yourhost.example.com/otrs/installer.pl), to prevent the system from being hijacked. If set to "No", the system can be reinstalled and the current basic configuration will be used to pre-populate the questions within the installer script. If not active, it also disables the GenericAgent, PackageManager and SQL Box.' =>
            '',
        'Display a warning and prevent search when using stop words within fulltext search.' =>
            '',
        'Display settings to override defaults for Process Tickets.' => '',
        'Displays the accounted time for an article in the ticket zoom view.' =>
            '',
        'Down' => '下',
        'Dropdown' => '下拉',
        'Dutch stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Dynamic Fields Checkbox Backend GUI' => '',
        'Dynamic Fields Date Time Backend GUI' => '',
        'Dynamic Fields Drop-down Backend GUI' => '',
        'Dynamic Fields GUI' => '',
        'Dynamic Fields Multiselect Backend GUI' => '',
        'Dynamic Fields Overview Limit' => '動態字段概覽限制',
        'Dynamic Fields Text Backend GUI' => '',
        'Dynamic Fields used to export the search result in CSV format.' =>
            '',
        'Dynamic fields groups for process widget. The key is the name of the group, the value contains the fields to be shown. Example: \'Key => My Group\', \'Content: Name_X, NameY\'.' =>
            '',
        'Dynamic fields limit per page for Dynamic Fields Overview' => '動態字段的個數',
        'Dynamic fields options shown in the ticket message screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required. NOTE. If you want to display these fields also in the ticket zoom of the customer interface, you have to enable them in CustomerTicketZoom###DynamicField.' =>
            '',
        'Dynamic fields options shown in the ticket reply section in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the email outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the process widget in ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the sidebar of the ticket zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket close screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket compose screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket email screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket forward screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket free text screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket medium format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket move screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket note screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket overview screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket owner screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket pending screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone inbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone outbound screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket phone screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket preview format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket print screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket priority screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket responsible screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.' =>
            '',
        'Dynamic fields shown in the ticket search overview results screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and shown by default.' =>
            '',
        'Dynamic fields shown in the ticket search screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'Dynamic fields shown in the ticket small format overview screen of the agent interface. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Dynamic fields shown in the ticket zoom screen of the customer interface. Possible settings: 0 = Disabled, 1 = Enabled.' =>
            '',
        'DynamicField' => '',
        'DynamicField backend registration.' => '',
        'DynamicField object registration.' => '',
        'E-Mail Outbound' => '',
        'Edit Customer Companies.' => '',
        'Edit Customer Users.' => '',
        'Edit customer company' => '',
        'Email Addresses' => '郵件發送地址',
        'Email Outbound' => '',
        'Email sent to "%s".' => 'Email sent to "%s".',
        'Email sent to customer.' => 'Email sent to customer.',
        'Enable keep-alive connection header for SOAP responses.' => '',
        'Enabled filters.' => '啟用過濾器',
        'Enables PGP support. When PGP support is enabled for signing and encrypting mail, it is HIGHLY recommended that the web server runs as the OTRS user. Otherwise, there will be problems with the privileges when accessing .gnupg folder.' =>
            '',
        'Enables S/MIME support.' => '',
        'Enables customers to create their own accounts.' => '',
        'Enables file upload in the package manager frontend.' => '',
        'Enables or disables the caching for templates. WARNING: Do NOT disable template caching for production environments for it will cause a massive performance drop! This setting should only be disabled for debugging reasons!' =>
            '',
        'Enables or disables the debug mode over frontend interface.' => '',
        'Enables or disables the ticket watcher feature, to keep track of tickets without being the owner nor the responsible.' =>
            '',
        'Enables performance log (to log the page response time). It will affect the system performance. Frontend::Module###AdminPerformanceLog must be enabled.' =>
            '',
        'Enables spell checker support.' => '',
        'Enables the minimal ticket counter size (if "Date" was selected as TicketNumberGenerator).' =>
            '',
        'Enables ticket bulk action feature for the agent frontend to work on more than one ticket at a time.' =>
            '',
        'Enables ticket bulk action feature only for the listed groups.' =>
            '',
        'Enables ticket responsible feature, to keep track of a specific ticket.' =>
            '',
        'Enables ticket watcher feature only for the listed groups.' => '',
        'English (Canada)' => '',
        'English (United Kingdom)' => '',
        'English (United States)' => '',
        'English stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Enroll process for this ticket' => '',
        'Enter your shared secret to enable two factor authentication.' =>
            '',
        'Escalated Tickets' => '升級的工單',
        'Escalation response time finished' => '',
        'Escalation response time forewarned' => '',
        'Escalation response time in effect' => '',
        'Escalation solution time finished' => '',
        'Escalation solution time forewarned' => '',
        'Escalation solution time in effect' => '',
        'Escalation update time finished' => '',
        'Escalation update time forewarned' => '',
        'Escalation update time in effect' => '',
        'Escalation view' => '升級視圖',
        'EscalationTime' => '',
        'Estonian' => '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate).' =>
            '',
        'Event module registration. For more performance you can define a trigger event (e. g. Event => TicketCreate). This is only possible if all Ticket dynamic fields need the same event.' =>
            '',
        'Event module that performs an update statement on TicketIndex to rename the queue name there if needed and if StaticDB is actually used.' =>
            '',
        'Event module that updates customer user search profiles if login changes.' =>
            '',
        'Event module that updates customer user service membership if login changes.' =>
            '',
        'Event module that updates customer users after an update of the Customer.' =>
            '',
        'Event module that updates tickets after an update of the Customer User.' =>
            '',
        'Event module that updates tickets after an update of the Customer.' =>
            '',
        'Events Ticket Calendar' => '',
        'Execute SQL statements.' => '執行SQL命令',
        'Executes a custom command or module. Note: if module is used, function is required.' =>
            '',
        'Executes follow-up checks on In-Reply-To or References headers for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on attachment contents for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on email body for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Executes follow-up checks on the raw source email for mails that don\'t have a ticket number in the subject.' =>
            '',
        'Exports the whole article tree in search result (it can affect the system performance).' =>
            '',
        'Fetch emails via fetchmail (using SSL).' => '',
        'Fetch emails via fetchmail.' => '',
        'Fetch incoming emails from configured mail accounts.' => '',
        'Fetches packages via proxy. Overwrites "WebUserAgent::Proxy".' =>
            '',
        'File that is displayed in the Kernel::Modules::AgentInfo module, if located under Kernel/Output/HTML/Templates/Standard/AgentInfo.tt.' =>
            '',
        'Filter for debugging ACLs. Note: More ticket attributes can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter for debugging Transitions. Note: More filters can be added in the format <OTRS_TICKET_Attribute> e.g. <OTRS_TICKET_Priority>.' =>
            '',
        'Filter incoming emails.' => '過濾收到的郵件.',
        'Finnish' => '',
        'First Christmas Day' => '聖誕節',
        'First Queue' => '',
        'FirstLock' => '',
        'FirstResponse' => '',
        'FirstResponseDiffInMin' => '',
        'FirstResponseInMin' => '',
        'Firstname Lastname' => '',
        'Firstname Lastname (UserLogin)' => '',
        'FollowUp for [%s]. %s' => 'FollowUp for [%s]. %s',
        'Forces encoding of outgoing emails (7bit|8bit|quoted-printable|base64).' =>
            '',
        'Forces to choose a different ticket state (from current) after lock action. Define the current state as key, and the next state after lock action as content.' =>
            '',
        'Forces to unlock tickets after being moved to another queue.' =>
            '',
        'Forwarded to "%s".' => 'Forwarded to "%s".',
        'Free Fields' => '自定義字段',
        'French' => '',
        'French (Canada)' => '',
        'French stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Frontend' => '',
        'Frontend module registration (disable AgentTicketService link if Ticket Serivice feature is not used).' =>
            '',
        'Frontend module registration (disable company link if no company feature is used).' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available) for Customer.' =>
            '',
        'Frontend module registration (disable ticket processes screen if no process available).' =>
            '',
        'Frontend module registration for the agent interface.' => '',
        'Frontend module registration for the customer interface.' => '',
        'Frontend theme' => '介面風格',
        'Full value' => '',
        'Fulltext index regex filters to remove parts of the text.' => '',
        'Fulltext search' => '',
        'Galician' => '',
        'General ticket data shown in the ticket overviews (fall-back). Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default. Note that TicketNumber can not be disabled, because it is necessary.' =>
            '',
        'Generate dashboard statistics.' => '',
        'Generic Info module.' => '',
        'GenericAgent' => '計劃任務',
        'GenericInterface Debugger GUI' => '',
        'GenericInterface Invoker GUI' => '',
        'GenericInterface Operation GUI' => '',
        'GenericInterface TransportHTTPREST GUI' => '',
        'GenericInterface TransportHTTPSOAP GUI' => '',
        'GenericInterface Web Service GUI' => '',
        'GenericInterface Webservice History GUI' => '',
        'GenericInterface Webservice Mapping GUI' => '',
        'GenericInterface module registration for the invoker layer.' => '',
        'GenericInterface module registration for the mapping layer.' => '',
        'GenericInterface module registration for the operation layer.' =>
            '',
        'GenericInterface module registration for the transport layer.' =>
            '',
        'German' => '',
        'German stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Gives end users the possibility to override the separator character for CSV files, defined in the translation files.' =>
            '',
        'Global Search Module.' => '',
        'Go back' => '返回',
        'Go to dashboard!' => '',
        'Google Authenticator' => '',
        'Graph: Bar Chart' => '',
        'Graph: Line Chart' => '',
        'Graph: Stacked Area Chart' => '',
        'Greek' => '',
        'HTML Reference' => '',
        'HTML Reference.' => '',
        'Hebrew' => '',
        'Helps to extend your articles full-text search (From, To, Cc, Subject and Body search). Runtime will do full-text searches on live data (it works fine for up to 50.000 tickets). StaticDB will strip all articles and will build an index after article creation, increasing fulltext searches about 50%. To create an initial index use "bin/otrs.Console.pl Maint::Ticket::FulltextIndexRebuild".' =>
            '',
        'Hindi' => '',
        'Hungarian' => '',
        'If "DB" was selected for Customer::AuthModule, a database driver (normally autodetection is used) can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a password to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, a username to connect to the customer table can be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the DSN for the connection to the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the column name for the CustomerPassword in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the encryption type of passwords must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the column for the CustomerKey in the customer table must be specified.' =>
            '',
        'If "DB" was selected for Customer::AuthModule, the name of the table where your customer data should be stored must be specified.' =>
            '',
        'If "DB" was selected for SessionModule, a table in database where session data will be stored must be specified.' =>
            '',
        'If "FS" was selected for SessionModule, a directory where the session data will be stored must be specified.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify (by using a RegExp) to strip parts of REMOTE_USER (e. g. for to remove trailing domains). RegExp-Note, $1 will be the new Login.' =>
            '',
        'If "HTTPBasicAuth" was selected for Customer::AuthModule, you can specify to strip leading parts of user names (e. g. for domains like example_domain\user to user).' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and if you want to add a suffix to every customer login name, specifiy it here, e. g. you just want to write the username user but in your LDAP directory exists user@domain.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and special paramaters are needed for the Net::LDAP perl module, you can specify them here. See "perldoc Net::LDAP" for more information about the parameters.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the password for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule and your users have only anonymous access to the LDAP tree, but you want to search through the data, you can do this with a user who has access to the LDAP directory. Specify the username for this special user here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the BaseDN must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the LDAP host can be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, the user identifier must be specified.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, user attributes can be specified. For LDAP posixGroups use UID, for non LDAP posixGroups use full user DN.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify access attributes here.' =>
            '',
        'If "LDAP" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "LDAP" was selected for Customer::Authmodule, you can check if the user is allowed to authenticate because he is in a posixGroup, e.g. user needs to be in a group xyz to use OTRS. Specify the group, who may access the system.' =>
            '',
        'If "LDAP" was selected, you can add a filter to each LDAP query, e.g. (mail=*), (objectclass=user) or (!objectclass=computer).' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the password to authenticate to the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, the radius host must be specified.' =>
            '',
        'If "Radius" was selected for Customer::AuthModule, you can specify if the applications will stop if e. g. a connection to a server can\'t be established due to network problems.' =>
            '',
        'If "Sendmail" was selected as SendmailModule, the location of the sendmail binary and the needed options must be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, a special log facility can be specified.' =>
            '',
        'If "SysLog" was selected for LogModule, the charset that should be used for logging can be specified.' =>
            '',
        'If "file" was selected for LogModule, a logfile must be specified. If the file doesn\'t exist, it will be created by the system.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the close ticket screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket free text screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket note screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of a ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'If a note is added by an agent, sets the state of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'If active, none of the regular expressions may match the user\'s email address to allow registration.' =>
            '',
        'If active, one of the regular expressions has to match the user\'s email address to allow registration.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, a password must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, and authentication to the mail server is needed, an username must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the mailhost that sends out the mails must be specified.' =>
            '',
        'If any of the "SMTP" mechanisms was selected as SendmailModule, the port where your mailserver is listening for incoming connections must be specified.' =>
            '',
        'If enabled debugging information for ACLs is logged.' => '',
        'If enabled debugging information for transitions is logged.' => '',
        'If enabled the daemon will redirect the standard error stream to a log file.' =>
            '',
        'If enabled the daemon will redirect the standard output stream to a log file.' =>
            '',
        'If enabled, OTRS will deliver all CSS files in minified form.' =>
            '',
        'If enabled, OTRS will deliver all JavaScript files in minified form.' =>
            '',
        'If enabled, TicketPhone and TicketEmail will be open in new windows.' =>
            '',
        'If enabled, the OTRS version tag will be removed from the Webinterface, the HTTP headers and the X-Headers of outgoing mails.' =>
            '',
        'If enabled, the customer can search for tickets in all services (regardless what services are assigned to the customer).' =>
            '',
        'If enabled, the different overviews (Dashboard, LockedView, QueueView) will automatically refresh after the specified time.' =>
            '如果啟用，所有概況(儀表板、鎖定概況、隊列概況)將在指定的間隔時間進行顯示刷新。',
        'If enabled, the first level of the main menu opens on mouse hover (instead of click only).' =>
            '',
        'If enabled, users that haven\'t selected a time zone yet will be notified to do so. Note: Notification will not be shown if (1) user has not yet selected a time zone and (2) OTRSTimeZone and UserDefaultTimeZone do match and (3) are not set to UTC.' =>
            '',
        'If set, this address is used as envelope sender header in outgoing notifications. If no address is specified, the envelope sender header is empty.' =>
            '',
        'If set, this address is used as envelope sender in outgoing messages (not notifications - see below). If no address is specified, the envelope sender is equal to queue e-mail address.' =>
            '',
        'If this option is enabled, then the decrypted data will be stored in the database if they are displayed in AgentTicketZoom.' =>
            '',
        'If this option is set to \'Yes\', tickets created via the web interface, via Customers or Agents, will receive an autoresponse if configured. If this option is set to \'No\', no autoresponses will be sent.' =>
            '',
        'If this regex matches, no message will be send by the autoresponder.' =>
            '',
        'If this setting is active, local modifications will not be highlighted as errors in the package manager and support data collector.' =>
            '',
        'Ignore article with system sender type for new article feature (e. g. auto responses or email notifications).' =>
            '',
        'Include tickets of subqueues per default when selecting a queue.' =>
            '',
        'Include unknown customers in ticket filter.' => '',
        'Includes article create times in the ticket search of the agent interface.' =>
            '',
        'Incoming Phone Call.' => '',
        'IndexAccelerator: to choose your backend TicketViewAccelerator module. "RuntimeDB" generates each queue view on the fly from ticket table (no performance problems up to approx. 60.000 tickets in total and 6.000 open tickets in the system). "StaticDB" is the most powerful module, it uses an extra ticket-index table that works like a view (recommended if more than 80.000 and 6.000 open tickets are stored in the system). Use the command "bin/otrs.Console.pl Maint::Ticket::QueueIndexRebuild" for initial index creation.' =>
            '',
        'Input' => '',
        'Install ispell or aspell on the system, if you want to use a spell checker. Please specify the path to the aspell or ispell binary on your operating system.' =>
            '',
        'Interface language' => '界面語言',
        'International Workers\' Day' => '勞動節',
        'It is possible to configure different skins, for example to distinguish between diferent agents, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different skins, for example to distinguish between diferent customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid skin on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'It is possible to configure different themes, for example to distinguish between agents and customers, to be used on a per-domain basis within the application. Using a regular expression (regex), you can configure a Key/Content pair to match a domain. The value in "Key" should match the domain, and the value in "Content" should be a valid theme on your system. Please see the example entries for the proper form of the regex.' =>
            '',
        'Italian' => '',
        'Italian stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Ivory' => '',
        'Ivory (Slim)' => '',
        'Japanese' => '',
        'JavaScript function for the search frontend.' => '',
        'Large' => '詳細',
        'Last customer subject' => '',
        'Lastname Firstname' => '',
        'Lastname Firstname (UserLogin)' => '',
        'Lastname, Firstname' => '',
        'Lastname, Firstname (UserLogin)' => '',
        'Latvian' => '',
        'Left' => '',
        'Link Object.' => '',
        'Link agents to groups.' => '鏈接服務人員到組.',
        'Link agents to roles.' => '鏈接服務人員到角色.',
        'Link attachments to templates.' => '鏈接附件至模板',
        'Link customer user to groups.' => '鏈接用戶至組',
        'Link customer user to services.' => '鏈接用戶至服務',
        'Link queues to auto responses.' => '鏈接隊列至自動回復',
        'Link roles to groups.' => '鏈接角色至組',
        'Link templates to queues.' => '鏈接模板至隊列',
        'Link this ticket to other objects' => '將工單鏈接至其它對象',
        'Links 2 tickets with a "Normal" type link.' => '',
        'Links 2 tickets with a "ParentChild" type link.' => '',
        'List of CSS files to always be loaded for the agent interface.' =>
            '',
        'List of CSS files to always be loaded for the customer interface.' =>
            '',
        'List of JS files to always be loaded for the agent interface.' =>
            '',
        'List of JS files to always be loaded for the customer interface.' =>
            '',
        'List of all CustomerCompany events to be displayed in the GUI.' =>
            '',
        'List of all CustomerUser events to be displayed in the GUI.' => '',
        'List of all DynamicField events to be displayed in the GUI.' => '',
        'List of all Package events to be displayed in the GUI.' => '',
        'List of all article events to be displayed in the GUI.' => '',
        'List of all queue events to be displayed in the GUI.' => '',
        'List of all ticket events to be displayed in the GUI.' => '',
        'List of default Standard Templates which are assigned automatically to new Queues upon creation.' =>
            '',
        'List of responsive CSS files to always be loaded for the agent interface.' =>
            '',
        'List of responsive CSS files to always be loaded for the customer interface.' =>
            '',
        'List view' => '',
        'Lithuanian' => '',
        'Lock / unlock this ticket' => '',
        'Locked Tickets' => '鎖定的工單',
        'Locked Tickets.' => '',
        'Locked ticket.' => 'Locked ticket.',
        'Log file for the ticket counter.' => '',
        'Logout of customer panel.' => '',
        'Look into a ticket!' => '查看工單内容',
        'Loop-Protection! No auto-response sent to "%s".' => 'Loop-Protection! No auto-response sent to "%s".',
        'Mail Accounts' => '',
        'Main menu registration.' => '',
        'Makes the application check the MX record of email addresses before sending an email or submitting a telephone or email ticket.' =>
            '',
        'Makes the application check the syntax of email addresses.' => '',
        'Makes the session management use html cookies. If html cookies are disabled or if the client browser disabled html cookies, then the system will work as usual and append the session id to the links.' =>
            '',
        'Malay' => '',
        'Manage OTRS Group cloud services.' => '',
        'Manage PGP keys for email encryption.' => '管理郵件加密的PGP密鑰.',
        'Manage POP3 or IMAP accounts to fetch email from.' => '管理收取郵件的POP3或IMAP帳號.',
        'Manage S/MIME certificates for email encryption.' => '管理郵件的S/MIME加密証書.',
        'Manage existing sessions.' => '管理當前登錄會話.',
        'Manage support data.' => '',
        'Manage system registration.' => '管理系統註冊',
        'Manage tasks triggered by event or time based execution.' => '管理基於事件或時間觸發的任務',
        'Mark as Spam!' => '標記為垃圾!',
        'Mark this ticket as junk!' => '',
        'Max size (in characters) of the customer information table (phone and email) in the compose screen.' =>
            '',
        'Max size (in rows) of the informed agents box in the agent interface.' =>
            '',
        'Max size (in rows) of the involved agents box in the agent interface.' =>
            '',
        'Max size of the subjects in an email reply and in some overview screens.' =>
            '',
        'Maximal auto email responses to own email-address a day (Loop-Protection).' =>
            '',
        'Maximal size in KBytes for mails that can be fetched via POP3/POP3S/IMAP/IMAPS (KBytes).' =>
            '',
        'Maximum Number of a calendar shown in a dropdown.' => '',
        'Maximum length (in characters) of the dynamic field in the article of the ticket zoom view.' =>
            '',
        'Maximum length (in characters) of the dynamic field in the sidebar of the ticket zoom view.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the agent interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of a search in the customer interface.' =>
            '',
        'Maximum number of tickets to be displayed in the result of this operation.' =>
            '',
        'Maximum size (in characters) of the customer information table in the ticket zoom view.' =>
            '',
        'Medium' => '基本',
        'Merge this ticket and all articles into a another ticket' => '',
        'Merged Ticket <OTRS_TICKET> to <OTRS_MERGE_TO_TICKET>.' => '',
        'Miscellaneous' => '',
        'Module for To-selection in new ticket screen in the customer interface.' =>
            '',
        'Module to check if arrived emails should be marked as email-internal (because of original forwarded internal email). ArticleType and SenderType define the values for the arrived email/article.' =>
            '',
        'Module to check the group permissions for customer access to tickets.' =>
            '',
        'Module to check the group permissions for the access to tickets.' =>
            '',
        'Module to compose signed messages (PGP or S/MIME).' => '',
        'Module to encrypt composed messages (PGP or S/MIME).' => '',
        'Module to filter and manipulate incoming messages. Block/ignore all spam email with From: noreply@ address.' =>
            '',
        'Module to filter and manipulate incoming messages. Get a 4 digit number to ticket free text, use regex in Match e. g. From => \'(.+?)@.+?\', and use () as [***] in Set =>.' =>
            '',
        'Module to generate accounted time ticket statistics.' => '',
        'Module to generate html OpenSearch profile for short ticket search in the agent interface.' =>
            '',
        'Module to generate html OpenSearch profile for short ticket search in the customer interface.' =>
            '',
        'Module to generate ticket solution and response time statistics.' =>
            '',
        'Module to generate ticket statistics.' => '',
        'Module to grant access if the CustomerID of the ticket matches the CustomerID of the customer.' =>
            '',
        'Module to grant access if the CustomerUserID of the ticket matches the CustomerUserID of the customer.' =>
            '',
        'Module to grant access to any agent that has been involved in a ticket in the past (based on ticket history entries).' =>
            '',
        'Module to grant access to the agent responsible of a ticket.' =>
            '',
        'Module to grant access to the creator of a ticket.' => '',
        'Module to grant access to the owner of a ticket.' => '',
        'Module to grant access to the watcher agents of a ticket.' => '',
        'Module to show notifications and escalations (ShownMax: max. shown escalations, EscalationInMinutes: Show ticket which will escalation in, CacheTime: Cache of calculated escalations in seconds).' =>
            '',
        'Module to use database filter storage.' => '',
        'Multiselect' => '多選',
        'My Queues' => '我的隊列',
        'My Services' => '',
        'My Tickets' => '我的工單',
        'My Tickets.' => '',
        'Name of custom queue. The custom queue is a queue selection of your preferred queues and can be selected in the preferences settings.' =>
            '',
        'Name of custom service. The custom service is a service selection of your preferred services and can be selected in the preferences settings.' =>
            '',
        'NameX' => '',
        'Nederlands' => '',
        'New Ticket' => '新的工單',
        'New Ticket [%s] created (Q=%s;P=%s;S=%s).' => 'New Ticket [%s] created (Q=%s;P=%s;S=%s).',
        'New Tickets' => '新的工單',
        'New Window' => '',
        'New Year\'s Day' => '元旦',
        'New Year\'s Eve' => '除夕',
        'New owner is "%s" (ID=%s).' => 'New owner is "%s" (ID=%s).',
        'New process ticket' => '',
        'New responsible is "%s" (ID=%s).' => 'Archive state changed: "%s"',
        'News about OTRS releases!' => '',
        'Next possible ticket states after adding a phone note in the ticket phone inbound screen of the agent interface.' =>
            '',
        'Next possible ticket states after adding a phone note in the ticket phone outbound screen of the agent interface.' =>
            '',
        'None' => '',
        'Norwegian' => '',
        'Notification Settings' => '',
        'Notification sent to "%s".' => 'Notification sent to "%s".',
        'Number of displayed tickets' => '顯示工單個數',
        'Number of lines (per ticket) that are shown by the search utility in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the agent interface.' =>
            '',
        'Number of tickets to be displayed in each page of a search result in the customer interface.' =>
            '',
        'OTRS News' => 'OTRS新聞',
        'OTRS can use one or more readonly mirror databases for expensive operations like fulltext search or statistics generation. Here you can specify the DSN for the first mirror database.' =>
            '',
        'Old: "%s" New: "%s"' => 'Old: "%s" New: "%s"',
        'Online' => '',
        'Open Tickets / Need to be answered' => '正在處理/需要回復的工單',
        'Open tickets (customer user)' => '',
        'Open tickets (customer)' => '',
        'Option' => '',
        'Optional queue limitation for the CreatorCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the InvolvedCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the OwnerCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Optional queue limitation for the ResponsibleCheck permission module. If set, permission is only granted for tickets in the specified queues.' =>
            '',
        'Other Settings' => '其它設置',
        'Out Of Office' => '',
        'Out Of Office Time' => '不在辦公室的時間',
        'Overloads (redefines) existing functions in Kernel::System::Ticket. Used to easily add customizations.' =>
            '',
        'Overview Escalated Tickets.' => '',
        'Overview Refresh Time' => '概況刷新間隔',
        'Overview of all escalated tickets.' => '',
        'Overview of all open Tickets.' => '',
        'Overview of all open tickets.' => '',
        'Overview of customer tickets.' => '',
        'PGP Key' => 'PGP密鑰',
        'PGP Key Management' => 'PGP密鑰管理',
        'PGP Key Upload' => '上傳PGP密鑰',
        'PGP Keys' => 'PGP密鑰',
        'Package event module file a scheduler task for update registration.' =>
            '',
        'Parameters for the CreateNextMask object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomQueue object in the preference view of the agent interface.' =>
            '',
        'Parameters for the CustomService object in the preference view of the agent interface.' =>
            '',
        'Parameters for the RefreshTime object in the preference view of the agent interface.' =>
            '',
        'Parameters for the column filters of the small ticket overview.' =>
            '',
        'Parameters for the dashboard backend of the customer company information of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer id status widget of the agent interface . "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the customer user list overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the new tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the open tickets overview of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the queue overview widget of the agent interface. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "QueuePermissionGroup" is not mandatory, queues are only listed if they belong to this permission group if you enable it. "States" is a list of states, the key is the sort order of the state in the widget. "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the running process tickets overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket escalation overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket events calendar of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the ticket pending reminder overview of the agent interface . "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin. Note: Only Ticket attributes and Dynamic Fields (DynamicField_NameX) are allowed for DefaultColumns. Possible settings: 0 = Disabled, 1 = Available, 2 = Enabled by default.' =>
            '',
        'Parameters for the dashboard backend of the ticket stats of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the dashboard backend of the upcoming events widget of the agent interface. "Limit" is the number of entries shown by default. "Group" is used to restrict the access to the plugin (e. g. Group: admin;group1;group2;). "Default" determines if the plugin is enabled by default or if the user needs to enable it manually. "CacheTTLLocal" is the cache time in minutes for the plugin.' =>
            '',
        'Parameters for the pages (in which the dynamic fields are shown) of the dynamic fields overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the medium ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the small ticket overview.' =>
            '',
        'Parameters for the pages (in which the tickets are shown) of the ticket preview overview.' =>
            '',
        'Parameters of the example SLA attribute Comment2.' => '',
        'Parameters of the example queue attribute Comment2.' => '',
        'Parameters of the example service attribute Comment2.' => '',
        'Parent' => '父',
        'ParentChild' => '',
        'Path for the log file (it only applies if "FS" was selected for LoopProtectionModule and it is mandatory).' =>
            '',
        'People' => '',
        'Performs the configured action for each event (as an Invoker) for each configured Webservice.' =>
            '',
        'Permitted width for compose email windows.' => '',
        'Permitted width for compose note windows.' => '',
        'Persian' => '',
        'Phone Call Inbound' => '接電話',
        'Phone Call Outbound' => '打電話',
        'Phone Call.' => '',
        'Phone call' => '電話',
        'Phone-Ticket' => '電話工單',
        'Picture Upload' => '',
        'Picture upload module.' => '',
        'Picture-Upload' => '',
        'Polish' => '',
        'Portuguese' => '',
        'Portuguese (Brasil)' => '',
        'PostMaster Filters' => '收件過濾器',
        'PostMaster Mail Accounts' => '郵件接收地址',
        'Print this ticket' => '打印工單',
        'Priorities' => '優先級',
        'Process Management Activity Dialog GUI' => '',
        'Process Management Activity GUI' => '',
        'Process Management Path GUI' => '',
        'Process Management Transition Action GUI' => '',
        'Process Management Transition GUI' => '',
        'Process Ticket.' => '',
        'Process pending tickets.' => '',
        'Process ticket' => '',
        'ProcessID' => '',
        'Product News' => '產品新聞',
        'Protection against CSRF (Cross Site Request Forgery) exploits (for more info see http://en.wikipedia.org/wiki/Cross-site_request_forgery).' =>
            '',
        'Provides a matrix overview of the tickets per state per queue.' =>
            '以矩阵的形势概述不同狀態和不同隊列的工單',
        'Queue view' => '隊列視圖',
        'Rebuild the ticket index for AgentTicketQueue.' => '',
        'Recognize if a ticket is a follow-up to an existing ticket using an external ticket number.' =>
            '',
        'Refresh interval' => '刷新間隔',
        'Reminder Tickets' => '提醒的工單',
        'Removed subscription for user "%s".' => 'Removed subscription for user "%s".',
        'Removes the ticket watcher information when a ticket is archived.' =>
            '',
        'Replaces the original sender with current customer\'s email address on compose answer in the ticket compose screen of the agent interface.' =>
            '',
        'Reports' => '',
        'Reports (OTRS Business Solution™)' => '',
        'Reprocess mails from spool directory that could not be imported in the first place.' =>
            '',
        'Required permissions to change the customer of a ticket in the agent interface.' =>
            '',
        'Required permissions to use the close ticket screen in the agent interface.' =>
            '',
        'Required permissions to use the email outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket bounce screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket compose screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket forward screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket free text screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket merge screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket note screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone inbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket phone outbound screen in the agent interface.' =>
            '',
        'Required permissions to use the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Required permissions to use the ticket responsible screen in the agent interface.' =>
            '',
        'Resets and unlocks the owner of a ticket if it was moved to another queue.' =>
            '',
        'Responsible Tickets' => '',
        'Responsible Tickets.' => '',
        'Restores a ticket from the archive (only if the event is a state change, from closed to any open available state).' =>
            '',
        'Retains all services in listings even if they are children of invalid elements.' =>
            '',
        'Right' => '',
        'Roles <-> Groups' => '角色 <-> 組',
        'Run file based generic agent jobs (Note: module name need needs to be specified in -configuration-module param e.g. "Kernel::System::GenericAgent").' =>
            '',
        'Running Process Tickets' => '',
        'Runs an initial wildcard search of the existing customer company when accessing the AdminCustomerCompany module.' =>
            '',
        'Runs an initial wildcard search of the existing customer users when accessing the AdminCustomerUser module.' =>
            '',
        'Runs the system in "Demo" mode. If set to "Yes", agents can change preferences, such as selection of language and theme via the agent web interface. These changes are only valid for the current session. It will not be possible for agents to change their passwords.' =>
            '',
        'Russian' => '',
        'S/MIME Certificate Upload' => '上傳的S/MIME証書',
        'S/MIME Certificates' => 'S/MIME証書',
        'SMS' => '',
        'SMS (Short Message Service)' => '',
        'Salutations' => '回復抬頭',
        'Sample command output' => '',
        'Saves the attachments of articles. "DB" stores all data in the database (not recommended for storing big attachments). "FS" stores the data on the filesystem; this is faster but the webserver should run under the OTRS user. You can switch between the modules even on a system that is already in production without any loss of data. Note: Searching for attachment names is not supported when "FS" is used.' =>
            '',
        'Schedule a maintenance period.' => '',
        'Screen' => '',
        'Screen after new ticket' => '創建新工單後的視圖',
        'Search Customer' => '搜索用戶',
        'Search Ticket.' => '',
        'Search Tickets.' => '',
        'Search User' => '',
        'Search backend default router.' => '',
        'Search backend router.' => '',
        'Search.' => '',
        'Second Christmas Day' => '聖誕節後第一個周日',
        'Second Queue' => '',
        'Select the separator character used in CSV files (stats and searches). If you don\'t select a separator here, the default separator for your language will be used.' =>
            '選擇CSV文件（統計和搜索）中使用的分隔符。如果不指定，系統將使用默認分隔符。',
        'Select your frontend Theme.' => '界面主題.',
        'Selects the cache backend to use.' => '',
        'Selects the module to handle uploads via the web interface. "DB" stores all uploads in the database, "FS" uses the file system.' =>
            '',
        'Selects the ticket number generator module. "AutoIncrement" increments the ticket number, the SystemID and the counter are used with SystemID.counter format (e.g. 1010138, 1010139). With "Date" the ticket numbers will be generated by the current date, the SystemID and the counter. The format looks like Year.Month.Day.SystemID.counter (e.g. 200206231010138, 200206231010139). With "DateChecksum"  the counter will be appended as checksum to the string of date and SystemID. The checksum will be rotated on a daily basis. The format looks like Year.Month.Day.SystemID.Counter.CheckSum (e.g. 2002070110101520, 2002070110101535). "Random" generates randomized ticket numbers in the format "SystemID.Random" (e.g. 100057866352, 103745394596).' =>
            '',
        'Send new outgoing mail from this ticket' => '',
        'Send notifications to users.' => '給用戶和服務人員發送通知',
        'Sender type for new tickets from the customer inteface.' => '',
        'Sends agent follow-up notification only to the owner, if a ticket is unlocked (the default is to send the notification to all agents).' =>
            '',
        'Sends all outgoing email via bcc to the specified address. Please use this only for backup reasons.' =>
            '',
        'Sends customer notifications just to the mapped customer. Normally, if no customer is mapped, the latest customer sender gets the notification.' =>
            '',
        'Sends registration information to OTRS group.' => '',
        'Sends reminder notifications of unlocked ticket after reaching the reminder date (only sent to ticket owner).' =>
            '',
        'Sends the notifications which are configured in the admin interface under "Notfication (Event)".' =>
            '',
        'Serbian Cyrillic' => '',
        'Serbian Latin' => '',
        'Service Level Agreements' => '服務水平協議',
        'Service view' => '',
        'ServiceView' => '',
        'Set minimum loglevel. If you select \'error\', just errors are logged. With \'debug\' you get all logging messages.' =>
            '',
        'Set sender email addresses for this system.' => '為系統設置發件人的郵件地址.',
        'Set the default height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set the limit of tickets that will be executed on a single genericagent job execution.' =>
            '',
        'Set the maximum height (in pixels) of inline HTML articles in AgentTicketZoom.' =>
            '',
        'Set this ticket to pending' => '掛起工單',
        'Set this to yes if you trust in all your public and private pgp keys, even if they are not certified with a trusted signature.' =>
            '',
        'Sets if SLA must be selected by the agent.' => '',
        'Sets if SLA must be selected by the customer.' => '',
        'Sets if note must be filled in by the agent. Can be overwritten by Ticket::Frontend::NeedAccountedTime.' =>
            '',
        'Sets if service must be selected by the agent.' => '',
        'Sets if service must be selected by the customer.' => '',
        'Sets if ticket owner must be selected by the agent.' => '',
        'Sets if ticket responsible must be selected by the agent.' => '',
        'Sets the PendingTime of a ticket to 0 if the state is changed to a non-pending state.' =>
            '',
        'Sets the age in minutes (first level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the age in minutes (second level) for highlighting queues that contain untouched tickets.' =>
            '',
        'Sets the configuration level of the administrator. Depending on the config level, some sysconfig options will be not shown. The config levels are in in ascending order: Expert, Advanced, Beginner. The higher the config level is (e.g. Beginner is the highest), the less likely is it that the user can accidentally configure the system in a way that it is not usable any more.' =>
            '',
        'Sets the count of articles visible in preview mode of ticket overviews.' =>
            '',
        'Sets the default article type for new email tickets in the agent interface.' =>
            '',
        'Sets the default article type for new phone tickets in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default body text for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default error message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default link type of splitted tickets in the agent interface.' =>
            '',
        'Sets the default message for the login screen on Agent and Customer interface, it\'s shown when a running system maintenance period is active.' =>
            '',
        'Sets the default message for the notification is shown on a running system maintenance period.' =>
            '',
        'Sets the default next state for new phone tickets in the agent interface.' =>
            '',
        'Sets the default next ticket state, after the creation of an email ticket in the agent interface.' =>
            '',
        'Sets the default note text for new telephone tickets. E.g \'New ticket via call\' in the agent interface.' =>
            '',
        'Sets the default priority for new email tickets in the agent interface.' =>
            '',
        'Sets the default priority for new phone tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new email tickets in the agent interface.' =>
            '',
        'Sets the default sender type for new phone ticket in the agent interface.' =>
            '',
        'Sets the default subject for new email tickets (e.g. \'email Outbound\') in the agent interface.' =>
            '',
        'Sets the default subject for new phone tickets (e.g. \'Phone call\') in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the close ticket screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket move screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket note screen of the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the default subject for notes added in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the default text for new email tickets in the agent interface.' =>
            '',
        'Sets the display order of the different items in the preferences view.' =>
            '',
        'Sets the inactivity time (in seconds) to pass before a session is killed and a user is loged out.' =>
            '',
        'Sets the maximum number of active agents within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active sessions per agent within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the maximum number of active sessions per customers within the timespan defined in SessionActiveTime.' =>
            '',
        'Sets the minimal ticket counter size if "AutoIncrement" was selected as TicketNumberGenerator. Default is 5, this means the counter starts from 10000.' =>
            '',
        'Sets the minutes a notification is shown for notice about upcoming system maintenance period.' =>
            '',
        'Sets the number of lines that are displayed in text messages (e.g. ticket lines in the QueueZoom).' =>
            '',
        'Sets the options for PGP binary.' => '',
        'Sets the order of the different items in the customer preferences view.' =>
            '',
        'Sets the password for private PGP key.' => '',
        'Sets the prefered time units (e.g. work units, hours, minutes).' =>
            '',
        'Sets the preferred digest to be used for PGP binary.' => '',
        'Sets the prefix to the scripts folder on the server, as configured on the web server. This setting is used as a variable, OTRS_CONFIG_ScriptAlias which is found in all forms of messaging used by the application, to build links to the tickets within the system.' =>
            '',
        'Sets the queue in the ticket close screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket free text screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket note screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the queue in the ticket responsible screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the close ticket screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket note screen of the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the responsible agent of the ticket in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the service in the close ticket screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket free text screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket note screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the service in the ticket responsible screen of the agent interface (Ticket::Service needs to be activated).' =>
            '',
        'Sets the stats hook.' => '',
        'Sets the ticket owner in the close ticket screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket free text screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket note screen of the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Sets the ticket owner in the ticket responsible screen of the agent interface.' =>
            '',
        'Sets the ticket type in the close ticket screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket bulk screen of the agent interface.' =>
            '',
        'Sets the ticket type in the ticket free text screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket note screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket owner screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket pending screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket priority screen of a zoomed ticket in the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the ticket type in the ticket responsible screen of the agent interface (Ticket::Type needs to be activated).' =>
            '',
        'Sets the time (in seconds) a user is marked as active.' => '',
        'Sets the time zone being used internally by OTRS to e. g. store dates and times in the database. WARNING: This setting must not be changed once set and tickets or any other data containing date/time have been created.' =>
            '',
        'Sets the time zone that will be assigned to newly created users and will be used for users that haven\'t yet set a time zone. This is the time zone being used as default to convert date and time between the OTRS time zone and the user\'s time zone.' =>
            '',
        'Sets the timeout (in seconds) for http/ftp downloads.' => '',
        'Sets the timeout (in seconds) for package downloads. Overwrites "WebUserAgent::Timeout".' =>
            '',
        'Shared Secret' => '',
        'Should the cache data be held in memory?' => '',
        'Should the cache data be stored in the selected cache backend?' =>
            '',
        'Show a responsible selection in phone and email tickets in the agent interface.' =>
            '',
        'Show article as rich text even if rich text writing is disabled.' =>
            '',
        'Show queues even when only locked tickets are in.' => '',
        'Show the current owner in the customer interface.' => '',
        'Show the current queue in the customer interface.' => '',
        'Show the history for this ticket' => '',
        'Show the ticket history' => '顯示工單歷史信息',
        'Shows a count of icons in the ticket zoom, if the article has attachments.' =>
            '',
        'Shows a link in the menu for subscribing / unsubscribing from a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows linking a ticket with another object in the ticket zoom view of the agent interface.  Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu that allows merging tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to access the history of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a free text field in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to add a note to a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to close a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to delete a ticket in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to delete a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to enroll a ticket into a process in the ticket zoom view of the agent interface.' =>
            '',
        'Shows a link in the menu to go back in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to lock / unlock a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link in the menu to lock/unlock tickets in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to move a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to print a ticket or an article in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the customer who requested the ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the history of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to see the owner of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the priority of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to see the responsible agent of a ticket in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to send an outbound email in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set a ticket as junk in every ticket overview of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Shows a link in the menu to set a ticket as pending in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a link in the menu to set the priority of a ticket in every ticket overview of the agent interface.' =>
            '',
        'Shows a link in the menu to zoom a ticket in the ticket overviews of the agent interface.' =>
            '',
        'Shows a link to access article attachments via a html online viewer in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to download article attachments in the zoom view of the article in the agent interface.' =>
            '',
        'Shows a link to see a zoomed email ticket in plain text.' => '',
        'Shows a link to set a ticket as junk in the ticket zoom view of the agent interface. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2". To cluster menu items use for Key "ClusterName" and for the Content any name you want to see in the UI. Use "ClusterPriority" to configure the order of a certain cluster within the toolbar.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the involved agents on this ticket, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the close ticket screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket free text screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket note screen of the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows a list of all the possible agents (all agents with note permissions on the queue/ticket) to determine who should be informed about this note, in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows a preview of the ticket overview (CustomerInfo => 1 - shows also Customer-Info, CustomerInfoMaxSize max. size in characters of Customer-Info).' =>
            '',
        'Shows a select of ticket attributes to order the queue view ticket list. The possible selections can be configured via \'TicketOverviewMenuSort###SortAttributes\'.' =>
            '',
        'Shows all both ro and rw queues in the queue view.' => '',
        'Shows all both ro and rw tickets in the service view.' => '',
        'Shows all open tickets (even if they are locked) in the escalation view of the agent interface.' =>
            '',
        'Shows all open tickets (even if they are locked) in the status view of the agent interface.' =>
            '',
        'Shows all the articles of the ticket (expanded) in the zoom view.' =>
            '',
        'Shows all the customer identifiers in a multi-select field (not useful if you have a lot of customer identifiers).' =>
            '',
        'Shows an owner selection in phone and email tickets in the agent interface.' =>
            '',
        'Shows colors for different article types in the article table.' =>
            '',
        'Shows customer history tickets in AgentTicketPhone, AgentTicketEmail and AgentTicketCustomer.' =>
            '',
        'Shows either the last customer article\'s subject or the ticket title in the small format overview.' =>
            '',
        'Shows existing parent/child queue lists in the system in the form of a tree or a list.' =>
            '',
        'Shows information on how to start OTRS Daemon' => '',
        'Shows the activated ticket attributes in the customer interface (0 = Disabled and 1 = Enabled).' =>
            '',
        'Shows the articles sorted normally or in reverse, under ticket zoom in the agent interface.' =>
            '',
        'Shows the customer user information (phone and email) in the compose screen.' =>
            '',
        'Shows the customer user\'s info in the ticket zoom view.' => '',
        'Shows the message of the day (MOTD) in the agent dashboard. "Group" is used to restrict access to the plugin (e. g. Group: admin;group1;group2;). "Default" indicates if the plugin is enabled by default or if the user needs to enable it manually.' =>
            '',
        'Shows the message of the day on login screen of the agent interface.' =>
            '',
        'Shows the ticket history (reverse ordered) in the agent interface.' =>
            '',
        'Shows the ticket priority options in the close ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the move ticket screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket bulk screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket note screen of the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the ticket priority options in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows the title fields in the close ticket screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket free text screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket note screen of the agent interface.' =>
            '',
        'Shows the title fields in the ticket owner screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket pending screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket priority screen of a zoomed ticket in the agent interface.' =>
            '',
        'Shows the title fields in the ticket responsible screen of the agent interface.' =>
            '',
        'Shows time in long format (days, hours, minutes), if set to "Yes"; or in short format (days, hours), if set to "No".' =>
            '',
        'Shows time use complete description (days, hours, minutes), if set to "Yes"; or just first letter (d, h, m), if set to "No".' =>
            '',
        'Signatures' => '回復簽名',
        'Simple' => '',
        'Skin' => '皮膚',
        'Slovak' => '',
        'Slovenian' => '',
        'Small' => '簡潔',
        'Software Package Manager.' => '',
        'SolutionDiffInMin' => '',
        'SolutionInMin' => '',
        'Some description!' => '',
        'Some picture description!' => '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the queue view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the QueueID for the key and 0 or 1 for value.' =>
            '',
        'Sorts the tickets (ascendingly or descendingly) when a single queue is selected in the service view and after the tickets are sorted by priority. Values: 0 = ascending (oldest on top, default), 1 = descending (youngest on top). Use the ServiceID for the key and 0 or 1 for value.' =>
            '',
        'Spam' => '',
        'Spam Assassin example setup. Ignores emails that are marked with SpamAssassin.' =>
            '',
        'Spam Assassin example setup. Moves marked mails to spam queue.' =>
            '',
        'Spanish' => '',
        'Spanish (Colombia)' => '',
        'Spanish (Mexico)' => '',
        'Spanish stop words for fulltext index. These words will be removed from the search index.' =>
            '',
        'Specifies if an agent should receive email notification of his own actions.' =>
            '',
        'Specifies the available note types for this ticket mask. If the option is deselected, ArticleTypeDefault is used and the option is removed from the mask.' =>
            '',
        'Specifies the default article type for the ticket compose screen in the agent interface if the article type cannot be automatically detected.' =>
            '',
        'Specifies the different article types that will be used in the system.' =>
            '',
        'Specifies the different note types that will be used in the system.' =>
            '',
        'Specifies the directory to store the data in, if "FS" was selected for TicketStorageModule.' =>
            '',
        'Specifies the directory where SSL certificates are stored.' => '',
        'Specifies the directory where private SSL certificates are stored.' =>
            '',
        'Specifies the email address that should be used by the application when sending notifications. The email address is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com). You can use the OTRS_CONFIG_FQDN variable as set in your configuation, or choose another email address.' =>
            '',
        'Specifies the email addresses to get notification messages from scheduler tasks.' =>
            '',
        'Specifies the group where the user needs rw permissions so that he can access the "SwitchToCustomer" feature.' =>
            '',
        'Specifies the name that should be used by the application when sending notifications. The sender name is used to build the complete display name for the notification master (i.e. "OTRS Notifications" otrs@your.example.com).' =>
            '',
        'Specifies the order in which the firstname and the lastname of agents will be displayed.' =>
            '',
        'Specifies the path of the file for the logo in the page header (gif|jpg|png, 700 x 100 pixel).' =>
            '',
        'Specifies the path of the file for the performance log.' => '',
        'Specifies the path to the converter that allows the view of Microsoft Excel files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of Microsoft Word files, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of PDF documents, in the web interface.' =>
            '',
        'Specifies the path to the converter that allows the view of XML files, in the web interface.' =>
            '',
        'Specifies the text that should appear in the log file to denote a CGI script entry.' =>
            '',
        'Specifies user id of the postmaster data base.' => '',
        'Specifies whether all storage backends should be checked when looking for attachments. This is only required for installations where some attachments are in the file system, and others in the database.' =>
            '',
        'Specify how many sub directory levels to use when creating cache files. This should prevent too many cache files being in one directory.' =>
            '',
        'Specify the channel to be used to fetch OTRS Business Solution™ updates. Warning: Development releases might not be complete, your system might experience unrecoverable errors and on extreme cases could become unresponsive!' =>
            '',
        'Specify the password to authenticate for the first mirror database.' =>
            '',
        'Specify the username to authenticate for the first mirror database.' =>
            '',
        'Spell checker.' => '',
        'Spelling Dictionary' => '拼寫檢查字典',
        'Standard available permissions for agents within the application. If more permissions are needed, they can be entered here. Permissions must be defined to be effective. Some other good permissions have also been provided built-in: note, close, pending, customer, freetext, move, compose, responsible, forward, and bounce. Make sure that "rw" is always the last registered permission.' =>
            '',
        'Start number for statistics counting. Every new stat increments this number.' =>
            '',
        'Starts a wildcard search of the active object after the link object mask is started.' =>
            '',
        'Stat#' => '統計#',
        'States' => '狀態',
        'Status view' => '狀態視圖',
        'Stores cookies after the browser has been closed.' => '',
        'Strips empty lines on the ticket preview in the queue view.' => '',
        'Strips empty lines on the ticket preview in the service view.' =>
            '',
        'Swahili' => '',
        'Swedish' => '',
        'System Address Display Name' => '',
        'System Maintenance' => '',
        'System Request (%s).' => 'System Request (%s).',
        'Target' => '',
        'Templates <-> Queues' => '模板 <-> 隊列',
        'Textarea' => '文本塊',
        'Thai' => '',
        'The agent skin\'s InternalName which should be used in the agent interface. Please check the available skins in Frontend::Agent::Skins.' =>
            '',
        'The customer skin\'s InternalName which should be used in the customer interface. Please check the available skins in Frontend::Customer::Skins.' =>
            '',
        'The daemon registration for the scheduler cron task manager.' =>
            '',
        'The daemon registration for the scheduler future task manager.' =>
            '',
        'The daemon registration for the scheduler generic agent task manager.' =>
            '',
        'The daemon registration for the scheduler task worker.' => '',
        'The divider between TicketHook and ticket number. E.g \': \'.' =>
            '',
        'The duration in minutes after emitting an event, in which the new escalation notify and start events are suppressed.' =>
            '',
        'The format of the subject. \'Left\' means \'[TicketHook#:12345] Some Subject\', \'Right\' means \'Some Subject [TicketHook#:12345]\', \'None\' means \'Some Subject\' and no ticket number. In the latter case you should verify that the setting PostMaster::CheckFollowUpModule###0200-References is activated to recognize followups based on email headers.' =>
            '',
        'The headline shown in the customer interface.' => '',
        'The identifier for a ticket, e.g. Ticket#, Call#, MyTicket#. The default is Ticket#.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "default". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "ivory-slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface for the skin "slim". See "AgentLogo" for further description.' =>
            '',
        'The logo shown in the header of the agent interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown in the header of the customer interface. The URL to the image can be a relative URL to the skin image directory, or a full URL to a remote web server.' =>
            '',
        'The logo shown on top of the login box of the agent interface. The URL to the image must be relative URL to the skin image directory.' =>
            '',
        'The maximal number of articles expanded on a single page in AgentTicketZoom.' =>
            '',
        'The maximal number of articles shown on a single page in AgentTicketZoom.' =>
            '',
        'The maximum number of mails fetched at once before reconnecting to the server.' =>
            '',
        'The text at the beginning of the subject in an email reply, e.g. RE, AW, or AS.' =>
            '',
        'The text at the beginning of the subject when an email is forwarded, e.g. FW, Fwd, or WG.' =>
            '',
        'Theme' => '主題',
        'This event module stores attributes from CustomerUser as DynamicFields tickets. Please see the setting above for how to configure the mapping.' =>
            '',
        'This is the default orange - black skin for the customer interface.' =>
            '',
        'This is the default orange - black skin.' => '',
        'This module and its PreRun() function will be executed, if defined, for every request. This module is useful to check some user options or to display news about new applications.' =>
            '',
        'This module is part of the admin area of OTRS.' => '',
        'This option defines the dynamic field in which a Process Management activity entity id is stored.' =>
            '',
        'This option defines the dynamic field in which a Process Management process entity id is stored.' =>
            '',
        'This option defines the process tickets default lock.' => '',
        'This option defines the process tickets default priority.' => '',
        'This option defines the process tickets default queue.' => '',
        'This option defines the process tickets default state.' => '',
        'This option will deny the access to customer company tickets, which are not created by the customer user.' =>
            '',
        'This setting allows you to override the built-in country list with your own list of countries. This is particularly handy if you just want to use a small select group of countries.' =>
            '',
        'This setting is deprecated. Set OTRSTimeZone instead.' => '',
        'This will allow the system to send text messages via SMS.' => '',
        'Ticket Close.' => '',
        'Ticket Compose Bounce Email.' => '',
        'Ticket Compose email Answer.' => '',
        'Ticket Customer.' => '',
        'Ticket Forward Email.' => '',
        'Ticket FreeText.' => '',
        'Ticket History.' => '',
        'Ticket Lock.' => '',
        'Ticket Merge.' => '',
        'Ticket Move.' => '',
        'Ticket Note.' => '',
        'Ticket Notifications' => '',
        'Ticket Outbound Email.' => '',
        'Ticket Overview "Medium" Limit' => '工單概覽“中”模式限制',
        'Ticket Overview "Preview" Limit' => '工單概覽“預覽”模式限制',
        'Ticket Overview "Small" Limit' => '工單概覽“小”模式限制',
        'Ticket Owner.' => '',
        'Ticket Pending.' => '',
        'Ticket Print.' => '',
        'Ticket Priority.' => '',
        'Ticket Queue Overview' => '工單隊列',
        'Ticket Responsible.' => '',
        'Ticket Watcher' => '',
        'Ticket Zoom.' => '',
        'Ticket bulk module.' => '',
        'Ticket event module that triggers the escalation stop events.' =>
            '',
        'Ticket limit per page for Ticket Overview "Medium"' => '工單概覽“中”模式每頁數量',
        'Ticket limit per page for Ticket Overview "Preview"' => '工單概覽“預覽”模式每頁數量',
        'Ticket limit per page for Ticket Overview "Small"' => '工單概覽“小”模式每頁數量',
        'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).' => 'Ticket moved into Queue "%s" (%s) from Queue "%s" (%s).',
        'Ticket notifications' => '',
        'Ticket overview' => '工單一覽',
        'Ticket plain view of an email.' => '',
        'Ticket title' => '',
        'Ticket zoom view.' => '',
        'TicketNumber' => '工單編號',
        'Tickets.' => '',
        'Time in seconds that gets added to the actual time if setting a pending-state (default: 86400 = 1 day).' =>
            '',
        'Title updated: Old: "%s", New: "%s"' => '',
        'To accept login information, such as an EULA or license.' => '',
        'To download attachments.' => '',
        'Toggles display of OTRS FeatureAddons list in PackageManager.' =>
            '',
        'Toolbar Item for a shortcut. Additional access control to show or not show this link can be done by using Key "Group" and Content like "rw:group1;move_into:group2".' =>
            '',
        'Transport selection for ticket notifications.' => '',
        'Tree view' => '',
        'Triggers ticket escalation events and notification events for escalation.' =>
            '',
        'Turkish' => '',
        'Turns off SSL certificate validation, for example if you use a transparent HTTPS proxy. Use at your own risk!' =>
            '',
        'Turns on drag and drop for the main navigation.' => '',
        'Turns on the animations used in the GUI. If you have problems with these animations (e.g. performance issues), you can turn them off here.' =>
            '',
        'Turns on the remote ip address check. It should be set to "No" if the application is used, for example, via a proxy farm or a dialup connection, because the remote ip address is mostly different for the requests.' =>
            '',
        'Ukrainian' => '',
        'Unlock tickets that are past their unlock timeout.' => '',
        'Unlock tickets whenever a note is added and the owner is out of office.' =>
            '',
        'Unlocked ticket.' => 'Unlocked ticket.',
        'Up' => '上',
        'Upcoming Events' => '即將發生的事件',
        'Update Ticket "Seen" flag if every article got seen or a new Article got created.' =>
            '',
        'Updated SLA to %s (ID=%s).' => 'Updated SLA to %s (ID=%s).',
        'Updated Service to %s (ID=%s).' => 'Updated Service to %s (ID=%s).',
        'Updated Type to %s (ID=%s).' => 'Updated Type to %s (ID=%s).',
        'Updated: %s' => 'Updated: %s',
        'Updated: %s=%s;%s=%s;%s=%s;' => 'Updated: %s=%s;%s=%s;%s=%s;',
        'Updates the ticket escalation index after a ticket attribute got updated.' =>
            '',
        'Updates the ticket index accelerator.' => '',
        'Use new type of select and autocomplete fields in agent interface, where applicable (InputFields).' =>
            '',
        'Use new type of select and autocomplete fields in customer interface, where applicable (InputFields).' =>
            '',
        'User Profile' => '用戶資料',
        'UserFirstname' => '',
        'UserLastname' => '',
        'Uses richtext for viewing and editing ticket notification.' => '',
        'Uses richtext for viewing and editing: articles, salutations, signatures, standard templates, auto responses and notifications.' =>
            '',
        'Vietnam' => '',
        'View performance benchmark results.' => '查看性能基准測試結果.',
        'Watch this ticket' => '',
        'Watched Tickets' => '訂閱的工單',
        'Watched Tickets.' => '',
        'We are performing scheduled maintenance.' => '',
        'We are performing scheduled maintenance. Login is temporarily not available.' =>
            '',
        'We are performing scheduled maintenance. We should be back online shortly.' =>
            '',
        'Web View' => '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the body of this note (this text cannot be changed by the agent).' =>
            '',
        'When tickets are merged, a note will be added automatically to the ticket which is no longer active. Here you can define the subject of this note (this subject cannot be changed by the agent).' =>
            '',
        'When tickets are merged, the customer can be informed per email by setting the check box "Inform Sender". In this text area, you can define a pre-formatted text which can later be modified by the agents.' =>
            '',
        'Whether or not to collect meta information from articles using filters configured in Ticket::Frontend::ZoomCollectMetaFilters.' =>
            '',
        'Yes, but hide archived tickets' => '',
        'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further information.' =>
            '',
        'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' =>
            '您的單號為"<OTRS_TICKET>"的郵件工單 被合併到單號"<OTRS_MERGE_TO_TICKET>" !',
        'Your queue selection of your favorite queues. You also get notified about those queues via email if enabled.' =>
            '您的最常用隊列，如果您設置了郵件通知，您將會得到該隊列的狀態通知.',
        'Your service selection of your favorite services. You also get notified about those services via email if enabled.' =>
            '',
        'attachment' => '',
        'debug' => '',
        'error' => '',
        'info' => '',
        'inline' => '',
        'normal' => '正常',
        'notice' => '',
        'off' => '關',
        'reverse' => '倒序',

    };

    $Self->{JavaScriptStrings} = [
        'A popup of this screen is already open. Do you want to close it and load this one instead?',
        'Add all',
        'All-day',
        'An error occurred during communication.',
        'An item with this name is already present.',
        'An unconnected transition is already placed on the canvas. Please connect this transition first before placing another transition.',
        'Apply',
        'Apr',
        'April',
        'As soon as you use this button or link, you will leave this screen and its current state will be saved automatically. Do you want to continue?',
        'Aug',
        'August',
        'Cancel',
        'Clear',
        'Clear all',
        'Clear debug log',
        'Clear search',
        'Clone webservice',
        'Close',
        'Close this dialog',
        'Confirm',
        'Could not open popup window. Please disable any popup blockers for this application.',
        'Customer interface does not support internal article types.',
        'Dec',
        'December',
        'Delete',
        'Delete Entity',
        'Delete invoker',
        'Delete operation',
        'Delete this Event Trigger',
        'Delete this Invoker',
        'Delete this Operation',
        'Delete webservice',
        'Do you really want to continue?',
        'Do you really want to delete this notification language?',
        'Duplicate event.',
        'Duplicated entry',
        'Edit Field Details',
        'Edit this transition',
        'Error',
        'Error in the mail settings. Please correct and try again.',
        'Feb',
        'February',
        'Filters',
        'Fr',
        'Fri',
        'Friday',
        'Hide EntityIDs',
        'If you now leave this page, all open popup windows will be closed, too!',
        'Import webservice',
        'Information about the OTRS Daemon',
        'Invalid date (need a future date)!',
        'Invalid date (need a past date)!',
        'Invalid date!',
        'It is going to be deleted from the field, please try again.',
        'Jan',
        'January',
        'Jul',
        'July',
        'Jun',
        'June',
        'Loading...',
        'Mail check successful.',
        'Mar',
        'March',
        'May',
        'May_long',
        'Mo',
        'Mon',
        'Monday',
        'Next',
        'No TransitionActions assigned.',
        'No data found.',
        'No dialogs assigned yet. Just pick an activity dialog from the list on the left and drag it here.',
        'No matches found.',
        'Not available',
        'Nov',
        'November',
        'OTRS runs with a huge lists of browsers, please upgrade to one of these.',
        'Oct',
        'October',
        'One or more errors occurred!',
        'Open date selection',
        'Please check the fields marked as red for valid inputs.',
        'Please enter at least one search value or * to find anything.',
        'Please perform a spell check on the the text first.',
        'Please remove the following words from your search as they cannot be searched for:',
        'Please see the documentation or ask your admin for further information.',
        'Please turn off Compatibility Mode in Internet Explorer!',
        'Previous',
        'Remove Entity from canvas',
        'Remove selection',
        'Remove the Transition from this Process',
        'Restore web service configuration',
        'Sa',
        'Sat',
        'Saturday',
        'Save',
        'Search',
        'Select all',
        'Sep',
        'September',
        'Setting a template will overwrite any text or attachment.',
        'Show or hide the content.',
        'Slide the navigation bar',
        'Su',
        'Sun',
        'Sunday',
        'Switch to desktop mode',
        'Switch to mobile mode',
        'Th',
        'The browser you are using is too old.',
        'There are currently no elements available to select from.',
        'This Activity cannot be deleted because it is the Start Activity.',
        'This Activity is already used in the Process. You cannot add it twice!',
        'This Transition is already used for this Activity. You cannot use it twice!',
        'This TransitionAction is already used in this Path. You cannot use it twice!',
        'This address already exists on the address list.',
        'This event is already attached to the job, Please use a different one.',
        'This item still contains sub items. Are you sure you want to remove this item including its sub items?',
        'Thu',
        'Thursday',
        'Today',
        'Tu',
        'Tue',
        'Tuesday',
        'We',
        'Wed',
        'Wednesday',
        'and %s more...',
        'day',
        'month',
        'week',
    ];

    # $$STOP$$
    return;
}

1;
