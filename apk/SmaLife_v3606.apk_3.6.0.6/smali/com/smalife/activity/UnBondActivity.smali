.class public Lcom/smalife/activity/UnBondActivity;
.super Lcom/smalife/BaseActivity;
.source "UnBondActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private back_btn:Landroid/widget/ImageButton;

.field private reBond_btn:Landroid/widget/Button;

.field private unBond_btn:Landroid/widget/Button;

.field private unbond_status:Landroid/widget/ImageView;

.field private userAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/smalife/activity/UnBondActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smalife/activity/UnBondActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UnBondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/UnBondActivity;->unBond_btn:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0e025c

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UnBondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/smalife/activity/UnBondActivity;->reBond_btn:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0e025b

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UnBondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smalife/activity/UnBondActivity;->unbond_status:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UnBondActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/UnBondActivity;->back_btn:Landroid/widget/ImageButton;

    .line 45
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->unBond_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->reBond_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method private showUnBondDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 76
    new-instance v2, Landroid/app/Dialog;

    const v4, 0x7f0a0013

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 77
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 78
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 80
    const v4, 0x7f03001b

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 81
    const v4, 0x7f0e007e

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .local v1, "content":Landroid/widget/TextView;
    const v4, 0x7f0e007f

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, "cancel":Landroid/widget/TextView;
    const v4, 0x7f0e0080

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    .local v3, "submit":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/smalife/activity/UnBondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 85
    const v5, 0x7f090125

    .line 84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v4, Lcom/smalife/activity/UnBondActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/UnBondActivity$1;-><init>(Lcom/smalife/activity/UnBondActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v4, Lcom/smalife/activity/UnBondActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/smalife/activity/UnBondActivity$2;-><init>(Lcom/smalife/activity/UnBondActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method

.method private unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 143
    const-string v4, "removeBond"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 144
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 145
    .local v2, "success":Z
    sget-object v3, Lcom/smalife/activity/UnBondActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unpairDevice result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "success":Z
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/smalife/activity/UnBondActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->unbond_status:Landroid/widget/ImageView;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smalife/MyApplication;->editFirstLogin(Z)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public initNoticSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getWatchType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM05"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editDisturb(Z)V

    .line 128
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editBackLigth(I)V

    .line 129
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smalife/MyApplication;->editShakeTime(I)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editLost_notice(Z)V

    .line 135
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1, v3}, Lcom/smalife/MyApplication;->editLongSitEnable(Z)V

    .line 136
    new-instance v0, Lcom/smalife/db/SmaDao;

    invoke-direct {v0, p0}, Lcom/smalife/db/SmaDao;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "dao":Lcom/smalife/db/SmaDao;
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smalife/db/SmaDao;->delAllClocks(Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 55
    :sswitch_0
    invoke-direct {p0}, Lcom/smalife/activity/UnBondActivity;->showUnBondDialog()V

    goto :goto_0

    .line 58
    :sswitch_1
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v1}, Lcom/smalife/MyApplication;->getBonded()Z

    move-result v0

    .line 59
    .local v0, "hasBond":Z
    if-nez v0, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    .line 61
    const-class v2, Lcom/smalife/activity/BondActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/smalife/activity/UnBondActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/smalife/activity/UnBondActivity;->finish()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/UnBondActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 64
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
    .end local v0    # "hasBond":Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/smalife/activity/UnBondActivity;->finish()V

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_2
        0x7f0e0162 -> :sswitch_0
        0x7f0e025c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030074

    invoke-virtual {p0, v0}, Lcom/smalife/activity/UnBondActivity;->setContentView(I)V

    .line 36
    iget-object v0, p0, Lcom/smalife/activity/UnBondActivity;->application:Lcom/smalife/MyApplication;

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/activity/UnBondActivity;->userAccount:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/smalife/activity/UnBondActivity;->initUI()V

    .line 38
    return-void
.end method
