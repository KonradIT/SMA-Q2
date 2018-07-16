.class public Lcom/smalife/activity/AboutUsActivity;
.super Lcom/smalife/BaseActivity;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backBtn:Landroid/widget/ImageButton;

.field private contactCustomerService:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    return-void
.end method

.method private findViewById()V
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/smalife/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/smalife/activity/AboutUsActivity;->backBtn:Landroid/widget/ImageButton;

    .line 26
    iget-object v0, p0, Lcom/smalife/activity/AboutUsActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/smalife/activity/AboutUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smalife/activity/AboutUsActivity;->contactCustomerService:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/smalife/activity/AboutUsActivity;->contactCustomerService:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/smalife/activity/AboutUsActivity;->finish()V

    goto :goto_0

    .line 41
    :pswitch_1
    const-string v4, "1104666598"

    invoke-static {v4, p0}, Lcom/tencent/connect/auth/QQAuth;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/QQAuth;

    move-result-object v2

    .line 42
    .local v2, "mqqAuth":Lcom/tencent/connect/auth/QQAuth;
    new-instance v1, Lcom/tencent/open/wpa/WPA;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/QQAuth;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/tencent/open/wpa/WPA;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 43
    .local v1, "mWPA":Lcom/tencent/open/wpa/WPA;
    const-string v0, "1678017731"

    .line 44
    .local v0, "ESQ":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, p0, v0, v4}, Lcom/tencent/open/wpa/WPA;->startWPAConversation(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 45
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/smalife/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f0900fd

    invoke-virtual {p0, v6}, Lcom/smalife/activity/AboutUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "~. error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    const/4 v6, 0x1

    .line 46
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0006
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/smalife/activity/AboutUsActivity;->setContentView(I)V

    .line 22
    invoke-direct {p0}, Lcom/smalife/activity/AboutUsActivity;->findViewById()V

    .line 23
    return-void
.end method
