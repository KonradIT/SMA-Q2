.class Lcom/smalife/activity/BondResultActivity$BleSearchListener;
.super Landroid/content/BroadcastReceiver;
.source "BondResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/BondResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleSearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/BondResultActivity;


# direct methods
.method private constructor <init>(Lcom/smalife/activity/BondResultActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smalife/activity/BondResultActivity;Lcom/smalife/activity/BondResultActivity$BleSearchListener;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/smalife/activity/BondResultActivity$BleSearchListener;-><init>(Lcom/smalife/activity/BondResultActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "actionString":Ljava/lang/String;
    const-string v1, "StartBondAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$0(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$1(Lcom/smalife/activity/BondResultActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$2(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v1, "BleConnecting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$0(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/BondResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 185
    const v3, 0x7f09011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$1(Lcom/smalife/activity/BondResultActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SM07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/smalife/activity/BondResultActivity$BleSearchListener;->this$0:Lcom/smalife/activity/BondResultActivity;

    invoke-static {v1}, Lcom/smalife/activity/BondResultActivity;->access$2(Lcom/smalife/activity/BondResultActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
