.class public Lcom/smalife/activity/MainActivity;
.super Landroid/app/ActivityGroup;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smalife/HomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/MainActivity$BleListener;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_INTENT:Landroid/content/Intent;

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final FILE_NAME:Ljava/lang/String; = "/share_pic.jpg"

.field public static final NOTIFICATION_LISTENER_INTENT:Landroid/content/Intent;

.field public static final REQUEST_ENABLE_BT:I = 0x2

.field public static SHARE_IMAGE:Ljava/lang/String; = null

.field private static final TIME_OUT:I = 0x64


# instance fields
.field private action_btn:Landroid/widget/ImageView;

.field private application:Lcom/smalife/MyApplication;

.field private backHandler:Landroid/os/Handler;

.field private bleConnetedListener:Lcom/smalife/activity/MainActivity$BleListener;

.field private camera_btn:Landroid/widget/ImageButton;

.field private content_layout:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private hanler:Landroid/os/Handler;

.field private heart_btn:Landroid/widget/ImageButton;

.field private heart_ll:Landroid/widget/LinearLayout;

.field private homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

.field public isXiaoQ:Z

.field private item_index:I

.field private love_ll:Landroid/widget/LinearLayout;

.field private menu_layout:Landroid/widget/RelativeLayout;

.field private final notic_action:Ljava/lang/String;

.field private notic_btn:Landroid/widget/ImageView;

.field private notic_item:Landroid/widget/LinearLayout;

.field private notic_name:Landroid/widget/TextView;

.field private out_point:Landroid/widget/ImageView;

.field private pair_btn:Landroid/widget/ImageButton;

.field private press_num:I

.field private final setting_action:Ljava/lang/String;

.field private setting_btn:Landroid/widget/ImageView;

.field private setting_item:Landroid/widget/LinearLayout;

.field private setting_name:Landroid/widget/TextView;

.field private final sleep_action:Ljava/lang/String;

.field private sleep_btn:Landroid/widget/ImageView;

.field private sleep_item:Landroid/widget/LinearLayout;

.field private sleep_name:Landroid/widget/TextView;

.field private final sport_action:Ljava/lang/String;

.field private sport_btn:Landroid/widget/ImageView;

.field private sport_item:Landroid/widget/LinearLayout;

.field private sport_name:Landroid/widget/TextView;

.field private sub_view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    .line 66
    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    .line 65
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smalife/activity/MainActivity;->NOTIFICATION_LISTENER_INTENT:Landroid/content/Intent;

    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 68
    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 67
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/smalife/activity/MainActivity;->ACCESSIBILITY_INTENT:Landroid/content/Intent;

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 70
    iput-boolean v1, p0, Lcom/smalife/activity/MainActivity;->isXiaoQ:Z

    .line 239
    const-string v0, "sport"

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_action:Ljava/lang/String;

    .line 240
    const-string v0, "sleep"

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_action:Ljava/lang/String;

    .line 241
    const-string v0, "notic"

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_action:Ljava/lang/String;

    .line 242
    const-string v0, "setting"

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_action:Ljava/lang/String;

    .line 243
    iput v1, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    .line 387
    new-instance v0, Lcom/smalife/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MainActivity$1;-><init>(Lcom/smalife/activity/MainActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->hanler:Landroid/os/Handler;

    .line 458
    new-instance v0, Lcom/smalife/activity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/smalife/activity/MainActivity$2;-><init>(Lcom/smalife/activity/MainActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->backHandler:Landroid/os/Handler;

    .line 470
    iput v1, p0, Lcom/smalife/activity/MainActivity;->press_num:I

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->content_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/MainActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/MainActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smalife/activity/MainActivity;->sub_view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/MainActivity;)Lcom/smalife/MyApplication;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/MainActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sub_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/MainActivity;I)V
    .locals 0

    .prologue
    .line 470
    iput p1, p0, Lcom/smalife/activity/MainActivity;->press_num:I

    return-void
.end method

.method static synthetic access$7(Lcom/smalife/activity/MainActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->backHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clickCheck(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0x1060013

    const/high16 v3, 0x1060000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 345
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 346
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 347
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 348
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->action_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 350
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    packed-switch p1, :pswitch_data_0

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->hanler:Landroid/os/Handler;

    iget v1, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 385
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 362
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 367
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->action_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 374
    :pswitch_3
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 375
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 379
    :pswitch_4
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 380
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 199
    const v0, 0x7f0e011e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->content_layout:Landroid/widget/LinearLayout;

    .line 201
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_btn:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_btn:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_btn:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f0e012c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_btn:Landroid/widget/ImageView;

    .line 206
    const v0, 0x7f0e0121

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_item:Landroid/widget/LinearLayout;

    .line 207
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_item:Landroid/widget/LinearLayout;

    .line 208
    const v0, 0x7f0e0127

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->action_btn:Landroid/widget/ImageView;

    .line 209
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_item:Landroid/widget/LinearLayout;

    .line 210
    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_item:Landroid/widget/LinearLayout;

    .line 212
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_name:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0e0126

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_name:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0e012a

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_name:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_name:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->action_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_item:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sleep_item:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->notic_item:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->setting_item:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v0, 0x7f0e011f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    .line 224
    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->heart_ll:Landroid/widget/LinearLayout;

    .line 225
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->love_ll:Landroid/widget/LinearLayout;

    .line 226
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->heart_btn:Landroid/widget/ImageButton;

    .line 227
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->heart_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->pair_btn:Landroid/widget/ImageButton;

    .line 229
    const v0, 0x7f0e0135

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->camera_btn:Landroid/widget/ImageButton;

    .line 230
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->heart_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->pair_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->camera_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/MainActivity;->out_point:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->out_point:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->sport_item:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->hanler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    return-void
.end method

.method private isBLESupported()V
    .locals 4

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 523
    const-string v3, "android.hardware.bluetooth_le"

    .line 522
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 523
    if-nez v2, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    const/4 v3, 0x0

    .line 524
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 526
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 527
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 528
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 536
    .end local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :cond_0
    :goto_1
    return-void

    .line 529
    .restart local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 530
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 534
    .end local v0    # "ac":Landroid/app/Activity;
    .end local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :cond_2
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->showBLEDialog()V

    goto :goto_1
.end method

.method private showBLEDialog()V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 329
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    new-instance v1, Landroid/content/Intent;

    .line 331
    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    .line 330
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "enableIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 334
    .end local v1    # "enableIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showNotifiListnerPrompt()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 171
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 173
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 175
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 176
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 177
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090201

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v4, Lcom/smalife/activity/MainActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/MainActivity$3;-><init>(Lcom/smalife/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    new-instance v4, Lcom/smalife/activity/MainActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/MainActivity$4;-><init>(Lcom/smalife/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 196
    return-void
.end method

.method private syncOpen()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AskAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "askIntent":Landroid/content/Intent;
    const-string v1, "action_key"

    .line 339
    const/16 v2, 0x15

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method private uploadCrashLogToAC()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 611
    const-string v4, "uploadCrashLogToAC()"

    invoke-static {v4}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "crash_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/accloud/cloudservice/AC;->fileMgr()Lcom/accloud/service/ACFileMgr;

    move-result-object v2

    .line 615
    .local v2, "fileMgr":Lcom/accloud/service/ACFileMgr;
    new-instance v0, Lcom/accloud/service/ACACL;

    invoke-direct {v0}, Lcom/accloud/service/ACACL;-><init>()V

    .line 616
    .local v0, "acl":Lcom/accloud/service/ACACL;
    invoke-virtual {v0, v6}, Lcom/accloud/service/ACACL;->setPublicReadAccess(Z)V

    .line 617
    invoke-virtual {v0, v6}, Lcom/accloud/service/ACACL;->setPublicWriteAccess(Z)V

    .line 619
    new-instance v1, Lcom/accloud/service/ACFileInfo;

    const-string v4, "sma/watch/header"

    invoke-direct {v1, v4, v3}, Lcom/accloud/service/ACFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .local v1, "fileInfo":Lcom/accloud/service/ACFileInfo;
    invoke-virtual {v1, v0}, Lcom/accloud/service/ACFileInfo;->setACL(Lcom/accloud/service/ACACL;)V

    .line 621
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getCrashLogUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/accloud/service/ACFileInfo;->setFile(Ljava/lang/String;)V

    .line 622
    const/4 v4, 0x0

    new-instance v5, Lcom/smalife/activity/MainActivity$6;

    invoke-direct {v5, p0}, Lcom/smalife/activity/MainActivity$6;-><init>(Lcom/smalife/activity/MainActivity;)V

    invoke-interface {v2, v1, v4, v5}, Lcom/accloud/service/ACFileMgr;->uploadFile(Lcom/accloud/service/ACFileInfo;Lcom/accloud/cloudservice/ProgressCallback;Lcom/accloud/cloudservice/VoidCallback;)V

    .line 636
    return-void
.end method

.method private uploadData()V
    .locals 4

    .prologue
    .line 598
    iget-object v2, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v2}, Lcom/smalife/MyApplication;->getSyncDay()I

    move-result v0

    .line 599
    .local v0, "syncDay":I
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getCurDate()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4eca\u5929  \u5df2\u7ecf \u4e0a\u4f20\u8fc7>>>>\u4e0a\u6b21\u4e0a\u4f20\u65f6\u95f4\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4eca\u5929  \u8fd8\u6ca1  \u4e0a\u4f20\u8fc7>>>>\u4e0a\u6b21\u4e0a\u4f20\u65f6\u95f4\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 604
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.alarm.logs.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, "syncIntent":Landroid/content/Intent;
    const-string v2, "userAccount"

    iget-object v3, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v3}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0, v1}, Lcom/smalife/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurDate()I
    .locals 4

    .prologue
    .line 589
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 590
    .local v0, "dt":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 591
    .local v1, "ft":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public gotoActivity(Z)V
    .locals 2
    .param p1, "isTop"    # Z

    .prologue
    .line 447
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    const-class v1, Lcom/smalife/activity/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public isNotificationListenerActived()Z
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    .line 163
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "strListener":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 167
    const-string v1, "com.smalife.watch/com.smalife.NotificationService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 509
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    .line 510
    packed-switch p1, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 512
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->finish()V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 474
    iget-object v2, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v3

    .line 475
    :goto_0
    iget-object v5, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    move v5, v3

    :goto_1
    or-int/2addr v2, v5

    if-eqz v2, :cond_5

    .line 476
    iget v2, p0, Lcom/smalife/activity/MainActivity;->press_num:I

    if-lt v2, v3, :cond_4

    .line 477
    sget-object v1, Lcom/smalife/MyApplication;->atyList:Ljava/util/ArrayList;

    .line 478
    .local v1, "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 479
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->finish()V

    .line 492
    .end local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :goto_3
    iget v2, p0, Lcom/smalife/activity/MainActivity;->press_num:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/smalife/activity/MainActivity;->press_num:I

    .line 493
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/smalife/activity/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/smalife/activity/MainActivity$5;-><init>(Lcom/smalife/activity/MainActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 505
    :goto_4
    return-void

    :cond_1
    move v2, v4

    .line 474
    goto :goto_0

    :cond_2
    move v5, v4

    .line 475
    goto :goto_1

    .line 479
    .restart local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 480
    .local v0, "ac":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 488
    .end local v0    # "ac":Landroid/app/Activity;
    .end local v1    # "actlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Activity;>;"
    :cond_4
    iget-object v2, p0, Lcom/smalife/activity/MainActivity;->context:Landroid/content/Context;

    .line 489
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090182

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 502
    :cond_5
    iget-object v2, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 318
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->hanler:Landroid/os/Handler;

    iget v5, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    :goto_1
    return-void

    .line 249
    :pswitch_1
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 250
    invoke-direct {p0, v6}, Lcom/smalife/activity/MainActivity;->clickCheck(I)V

    .line 251
    iput v6, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    invoke-direct {p0, v5}, Lcom/smalife/activity/MainActivity;->clickCheck(I)V

    .line 256
    iput v5, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    goto :goto_0

    .line 259
    :pswitch_3
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-ne v4, v8, :cond_0

    move v4, v5

    .line 260
    :goto_2
    iget-object v7, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v7

    if-ne v7, v9, :cond_1

    :goto_3
    or-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 261
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 265
    :goto_4
    const/4 v4, 0x2

    iput v4, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    goto :goto_0

    :cond_0
    move v4, v6

    .line 259
    goto :goto_2

    :cond_1
    move v5, v6

    .line 260
    goto :goto_3

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 268
    :pswitch_4
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    invoke-direct {p0, v7}, Lcom/smalife/activity/MainActivity;->clickCheck(I)V

    .line 270
    iput v7, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    goto :goto_0

    .line 273
    :pswitch_5
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 274
    invoke-direct {p0, v9}, Lcom/smalife/activity/MainActivity;->clickCheck(I)V

    .line 275
    iput v9, p0, Lcom/smalife/activity/MainActivity;->item_index:I

    goto :goto_0

    .line 278
    :pswitch_6
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 279
    const-string v4, "welcome"

    iget-object v7, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v7}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    :cond_3
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->context:Landroid/content/Context;

    .line 281
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f090102

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 285
    :cond_4
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v4}, Lcom/smalife/MyApplication;->getFriendAccount()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "friendString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 287
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v6

    .line 288
    .local v1, "isFriend":Z
    :goto_5
    if-eqz v1, :cond_7

    .line 289
    new-instance v3, Landroid/content/Intent;

    .line 290
    const-class v4, Lcom/smalife/activity/PairedActivity;

    .line 289
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v3, "pairedIntent":Landroid/content/Intent;
    const-string v4, "fnickName"

    .line 292
    iget-object v5, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v5}, Lcom/smalife/MyApplication;->getFriendName()Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v4, "friendAccount"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v3}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1    # "isFriend":Z
    .end local v3    # "pairedIntent":Landroid/content/Intent;
    :cond_6
    move v1, v5

    .line 287
    goto :goto_5

    .line 296
    .restart local v1    # "isFriend":Z
    :cond_7
    new-instance v4, Landroid/content/Intent;

    .line 297
    const-class v5, Lcom/smalife/activity/PairActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    invoke-virtual {p0, v4}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    .end local v0    # "friendString":Ljava/lang/String;
    .end local v1    # "isFriend":Z
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    .line 303
    const-string v4, "AskAction"

    .line 302
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "messageIntent":Landroid/content/Intent;
    const-string v4, "action_key"

    .line 305
    const/16 v6, 0x39

    .line 304
    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v4, "camera_btyes"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v2}, Lcom/smalife/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/smalife/camera/CameraAty;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 311
    .end local v2    # "messageIntent":Landroid/content/Intent;
    :pswitch_8
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/smalife/activity/HeartActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/smalife/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 315
    :pswitch_9
    iget-object v4, p0, Lcom/smalife/activity/MainActivity;->menu_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f0e0121
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/smalife/activity/MainActivity;->setContentView(I)V

    .line 76
    iput-object p0, p0, Lcom/smalife/activity/MainActivity;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/smalife/MyApplication;

    iput-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    .line 78
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editQota(Z)V

    .line 79
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->initUI()V

    .line 80
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->isBLESupported()V

    .line 82
    new-instance v1, Lcom/smalife/HomeKeyEventReceiver;

    invoke-direct {v1, p0}, Lcom/smalife/HomeKeyEventReceiver;-><init>(Lcom/smalife/HomeKeyListener;)V

    iput-object v1, p0, Lcom/smalife/activity/MainActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    .line 83
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 84
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v1, Lcom/smalife/activity/MainActivity$BleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/smalife/activity/MainActivity$BleListener;-><init>(Lcom/smalife/activity/MainActivity;Lcom/smalife/activity/MainActivity$BleListener;)V

    iput-object v1, p0, Lcom/smalife/activity/MainActivity;->bleConnetedListener:Lcom/smalife/activity/MainActivity$BleListener;

    .line 87
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->bleConnetedListener:Lcom/smalife/activity/MainActivity$BleListener;

    new-instance v2, Landroid/content/IntentFilter;

    .line 88
    const-string v3, "BleConnecting"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1, v2}, Lcom/smalife/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getHasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->uploadData()V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    .line 97
    .local v0, "hasBond":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-nez v1, :cond_1

    .line 98
    const-string v1, "MainActivity >>>> startService"

    invoke-static {v1}, Lcom/bestmafen/utils/L;->i(Ljava/lang/String;)V

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/ble/BlueToothService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editCurActivity(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->homeKeyListener:Lcom/smalife/HomeKeyEventReceiver;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/smalife/activity/MainActivity;->bleConnetedListener:Lcom/smalife/activity/MainActivity$BleListener;

    invoke-virtual {p0, v0}, Lcom/smalife/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 106
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getChoseXiaoQ()Z

    move-result v1

    iput-boolean v1, p0, Lcom/smalife/activity/MainActivity;->isXiaoQ:Z

    .line 107
    iget-boolean v1, p0, Lcom/smalife/activity/MainActivity;->isXiaoQ:Z

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->heart_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->love_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 112
    .local v0, "currentapiVersion":I
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/smalife/activity/MainActivity;->isNotificationListenerActived()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->showNotifiListnerPrompt()V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    iget-boolean v1, v1, Lcom/smalife/MyApplication;->isConnected:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "SM07"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 120
    if-nez v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/smalife/activity/MainActivity;->syncOpen()V

    .line 145
    .end local v0    # "currentapiVersion":I
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->heart_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/smalife/activity/MainActivity;->love_ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
