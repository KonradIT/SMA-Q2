.class public Lcom/smalife/activity/SportTrackSetActivity;
.super Landroid/app/Activity;
.source "SportTrackSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private LOCATION_BAIDU:I

.field private LOCATION_GOOGLE:I

.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private baidu:Landroid/widget/ImageButton;

.field private google:Landroid/widget/ImageButton;

.field private gpsListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private openGPS:Landroid/widget/CheckBox;

.field private rl_baidu:Landroid/widget/RelativeLayout;

.field private rl_google:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_BAIDU:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_GOOGLE:I

    .line 127
    new-instance v0, Lcom/smalife/activity/SportTrackSetActivity$1;

    invoke-direct {v0, p0}, Lcom/smalife/activity/SportTrackSetActivity$1;-><init>(Lcom/smalife/activity/SportTrackSetActivity;)V

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->gpsListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/SportTrackSetActivity;Z)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/smalife/activity/SportTrackSetActivity;->setGPS(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/smalife/activity/SportTrackSetActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->openGPS:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/SportTrackSetActivity;)Z
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->gPSIsOPen()Z

    move-result v0

    return v0
.end method

.method private closeGPSDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 203
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 204
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 205
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 207
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 208
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    .local v3, "submit":Landroid/widget/TextView;
    const-string v4, "\u5173\u95edGPS\uff0c\u505c\u6b62\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\uff1f"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SportTrackSetActivity$5;-><init>(Lcom/smalife/activity/SportTrackSetActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$6;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SportTrackSetActivity$6;-><init>(Lcom/smalife/activity/SportTrackSetActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$7;

    invoke-direct {v4, p0}, Lcom/smalife/activity/SportTrackSetActivity$7;-><init>(Lcom/smalife/activity/SportTrackSetActivity;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 234
    return-void
.end method

.method private gPSIsOPen()Z
    .locals 3

    .prologue
    .line 160
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/smalife/activity/SportTrackSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 161
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 162
    .local v0, "gps":Z
    if-eqz v0, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 165
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0e021b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->openGPS:Landroid/widget/CheckBox;

    .line 51
    const v0, 0x7f0e021e

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    .line 52
    const v0, 0x7f0e0221

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    .line 53
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->openGPS:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->gpsListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->back_btn:Landroid/widget/ImageButton;

    .line 55
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->rl_baidu:Landroid/widget/RelativeLayout;

    .line 57
    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->rl_google:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->rl_baidu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->rl_google:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method private openGPSDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 169
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 170
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 171
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 173
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 174
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 177
    .local v3, "submit":Landroid/widget/TextView;
    const-string v4, "\u8bf7\u6253\u5f00GPS\u63d0\u9ad8\u5b9a\u4f4d\u7cbe\u5ea6\uff01"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SportTrackSetActivity$2;-><init>(Lcom/smalife/activity/SportTrackSetActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/SportTrackSetActivity$3;-><init>(Lcom/smalife/activity/SportTrackSetActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v4, Lcom/smalife/activity/SportTrackSetActivity$4;

    invoke-direct {v4, p0}, Lcom/smalife/activity/SportTrackSetActivity$4;-><init>(Lcom/smalife/activity/SportTrackSetActivity;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 199
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 200
    return-void
.end method

.method private setGPS(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->gPSIsOPen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->openGPSDialog()V

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->gPSIsOPen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->closeGPSDialog()V

    goto :goto_0
.end method


# virtual methods
.method public getCurTime()J
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 89
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 91
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 92
    .local v1, "day":I
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 94
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/SportTrackSetActivity;->finish()V

    goto :goto_0

    .line 104
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 108
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 109
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->application:Lcom/smalife/MyApplication;

    iget v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_BAIDU:I

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editLocationModel(I)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 118
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 119
    iget-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->application:Lcom/smalife/MyApplication;

    iget v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_GOOGLE:I

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editLocationModel(I)V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_0
        0x7f0e021c -> :sswitch_1
        0x7f0e021f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/smalife/activity/SportTrackSetActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/smalife/activity/SportTrackSetActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/SportTrackSetActivity;->application:Lcom/smalife/MyApplication;

    .line 45
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->initData()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getLocationModel()I

    move-result v0

    .line 70
    .local v0, "locationModel":I
    iget v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_BAIDU:I

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 72
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->openGPS:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->gPSIsOPen()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    invoke-direct {p0}, Lcom/smalife/activity/SportTrackSetActivity;->gPSIsOPen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smalife/MapLocationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/smalife/activity/SportTrackSetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    :cond_1
    return-void

    .line 73
    :cond_2
    iget v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->LOCATION_GOOGLE:I

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->google:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 75
    iget-object v1, p0, Lcom/smalife/activity/SportTrackSetActivity;->baidu:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0
.end method
