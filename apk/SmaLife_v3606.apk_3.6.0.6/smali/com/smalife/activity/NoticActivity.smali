.class public Lcom/smalife/activity/NoticActivity;
.super Lcom/smalife/BaseActivity;
.source "NoticActivity.java"


# instance fields
.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private batteryTime:J

.field private battery_v:Landroid/widget/TextView;

.field private call_notic:Z

.field private checkDialog:Landroid/app/ProgressDialog;

.field private circle:Lcom/smalife/utils/MyCircle;

.field clist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smalife/entity/ClockEntity;",
            ">;"
        }
    .end annotation
.end field

.field private clock_btn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private level:I

.field private long_btn:Landroid/widget/Button;

.field private long_sit:Z

.field private lost_btn:Landroid/widget/Button;

.field private lost_notice:Z

.field private msg_btn:Landroid/widget/Button;

.field private msg_notic:Z

.field private newButton:Landroid/widget/ImageButton;

.field private tel_btn:Landroid/widget/Button;

.field private userAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smalife/activity/NoticActivity;->batteryTime:J

    .line 277
    new-instance v0, Lcom/smalife/activity/NoticActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/NoticActivity$1;-><init>(Lcom/smalife/activity/NoticActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/NoticActivity;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/NoticActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getBatteryLevel()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 143
    const/16 v2, 0x50

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoticActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method private initBatteryLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 271
    rsub-int/lit8 v1, p1, 0x64

    int-to-double v2, v1

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 272
    .local v0, "angle":I
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->circle:Lcom/smalife/utils/MyCircle;

    invoke-virtual {v1, v0}, Lcom/smalife/utils/MyCircle;->redraw(I)V

    .line 273
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->battery_v:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    sput p1, Lcom/smalife/ble/CmdKeyValue$BLE;->battery_level:I

    .line 275
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 49
    const v2, 0x7f0e0145

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    .line 50
    const v2, 0x7f0e0146

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    .line 51
    const v2, 0x7f0e0147

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->long_btn:Landroid/widget/Button;

    .line 52
    const v2, 0x7f0e0148

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->clock_btn:Landroid/widget/Button;

    .line 53
    const v2, 0x7f0e0144

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    .line 54
    const v2, 0x7f0e0142

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smalife/utils/MyCircle;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->circle:Lcom/smalife/utils/MyCircle;

    .line 55
    const v2, 0x7f0e0143

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->battery_v:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0e0006

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->back_btn:Landroid/widget/ImageButton;

    .line 57
    const v2, 0x7f0e0141

    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->newButton:Landroid/widget/ImageButton;

    .line 58
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->newButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->long_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->clock_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/smalife/MyApplication;

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    .line 66
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->userAccount:Ljava/lang/String;

    .line 67
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/smalife/activity/NoticActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    .line 68
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 70
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 72
    const v2, 0x3f19999a    # 0.6f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    iget-object v2, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 75
    const v4, 0x7f090181

    .line 74
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 258
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 262
    const-string v2, "battery_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "level":I
    invoke-direct {p0, v1}, Lcom/smalife/activity/NoticActivity;->initBatteryLevel(I)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0901bb

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 152
    :sswitch_0
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v6, v6, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v6, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 155
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 160
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v8}, Lcom/smalife/MyApplication;->editMsgNotic(Z)V

    .line 161
    new-instance v4, Landroid/content/Intent;

    .line 162
    const-string v6, "AskAction"

    .line 161
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v4, "msgIntent":Landroid/content/Intent;
    const-string v6, "action_key"

    .line 164
    const/16 v7, 0x22

    .line 163
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    .end local v4    # "msgIntent":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setSelected(Z)V

    .line 168
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v9}, Lcom/smalife/MyApplication;->editMsgNotic(Z)V

    .line 169
    new-instance v4, Landroid/content/Intent;

    .line 170
    const-string v6, "AskAction"

    .line 169
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    const-string v6, "action_key"

    .line 172
    const/16 v7, 0x21

    .line 171
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    .end local v4    # "msgIntent":Landroid/content/Intent;
    :sswitch_1
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v6, v6, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v6, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 180
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 185
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v8}, Lcom/smalife/MyApplication;->editCallNotic(Z)V

    .line 186
    new-instance v4, Landroid/content/Intent;

    .line 187
    const-string v6, "AskAction"

    .line 186
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    const-string v6, "action_key"

    .line 189
    const/16 v7, 0x20

    .line 188
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 192
    .end local v4    # "msgIntent":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setSelected(Z)V

    .line 193
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v9}, Lcom/smalife/MyApplication;->editCallNotic(Z)V

    .line 194
    new-instance v4, Landroid/content/Intent;

    .line 195
    const-string v6, "AskAction"

    .line 194
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    const-string v6, "action_key"

    .line 197
    const/16 v7, 0x19

    .line 196
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 202
    .end local v4    # "msgIntent":Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v6, v6, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v6, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 205
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 208
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .line 209
    const-string v6, "AskAction"

    .line 208
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "lostIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 211
    const-string v6, "action_key"

    .line 212
    const/16 v7, 0x24

    .line 211
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 214
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v8}, Lcom/smalife/MyApplication;->editLost_notice(Z)V

    .line 221
    :goto_1
    invoke-virtual {p0, v3}, Lcom/smalife/activity/NoticActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    :cond_5
    const-string v6, "action_key"

    .line 217
    const/16 v7, 0x23

    .line 216
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setSelected(Z)V

    .line 219
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v6, v9}, Lcom/smalife/MyApplication;->editLost_notice(Z)V

    goto :goto_1

    .line 224
    .end local v3    # "lostIntent":Landroid/content/Intent;
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    .line 225
    const-class v6, Lcom/smalife/activity/LongSitActivity;

    .line 224
    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v2, "longIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/smalife/activity/NoticActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 229
    .end local v2    # "longIntent":Landroid/content/Intent;
    :sswitch_4
    iget-object v6, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v6, v6, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v6, :cond_6

    .line 231
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 232
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 235
    :cond_6
    new-instance v0, Landroid/content/Intent;

    .line 236
    const-class v6, Lcom/smalife/activity/ClockListActivity;

    .line 235
    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "cIntent":Landroid/content/Intent;
    const-string v6, "clist"

    iget-object v7, p0, Lcom/smalife/activity/NoticActivity;->clist:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoticActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "cIntent":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/smalife/activity/NoticActivity;->finish()V

    goto/16 :goto_0

    .line 244
    :sswitch_6
    const/4 v5, 0x0

    .line 245
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/bestmafen/utils/AppManager;->isZh(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 246
    const-string v6, "http://www.smawatch.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 250
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/smalife/activity/NoticActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 248
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    const-string v6, "http://www.smawatch.com/#"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 150
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_5
        0x7f0e0141 -> :sswitch_6
        0x7f0e0144 -> :sswitch_2
        0x7f0e0145 -> :sswitch_0
        0x7f0e0146 -> :sswitch_1
        0x7f0e0147 -> :sswitch_3
        0x7f0e0148 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/NoticActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/smalife/activity/NoticActivity;->initUI()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 86
    sget-boolean v1, Lcom/smalife/ble/CmdKeyValue$BLE;->ble_hasOpen:Z

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->checkDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 88
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xc8

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/smalife/activity/NoticActivity;->level:I

    .line 96
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getMsgNotic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->msg_notic:Z

    .line 97
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getCallNotic()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->call_notic:Z

    .line 98
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLongSitEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->long_sit:Z

    .line 99
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLost_notice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->lost_notice:Z

    .line 100
    iget-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->lost_notice:Z

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 105
    :goto_0
    iget-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->msg_notic:Z

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 110
    :goto_1
    iget-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->call_notic:Z

    if-eqz v1, :cond_4

    .line 111
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 115
    :goto_2
    iget-boolean v1, p0, Lcom/smalife/activity/NoticActivity;->long_sit:Z

    if-eqz v1, :cond_5

    .line 116
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->long_btn:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 120
    :goto_3
    iget v1, p0, Lcom/smalife/activity/NoticActivity;->level:I

    invoke-direct {p0, v1}, Lcom/smalife/activity/NoticActivity;->initBatteryLevel(I)V

    .line 121
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->queryClockList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/smalife/activity/NoticActivity;->clist:Ljava/util/ArrayList;

    .line 123
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->clist:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->clist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->clock_btn:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 128
    :goto_4
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v1, :cond_1

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "now":J
    iget-wide v4, p0, Lcom/smalife/activity/NoticActivity;->batteryTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 131
    iput-wide v2, p0, Lcom/smalife/activity/NoticActivity;->batteryTime:J

    .line 132
    invoke-direct {p0}, Lcom/smalife/activity/NoticActivity;->getBatteryLevel()V

    .line 135
    .end local v2    # "now":J
    :cond_1
    return-void

    .line 103
    .end local v0    # "dao":Lcom/smalife/db/SmaDao;
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->lost_btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->msg_btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->tel_btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_2

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->long_btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_3

    .line 126
    .restart local v0    # "dao":Lcom/smalife/db/SmaDao;
    :cond_6
    iget-object v1, p0, Lcom/smalife/activity/NoticActivity;->clock_btn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_4
.end method
