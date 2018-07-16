.class Lcn/smssdk/gui/CountryPage$2;
.super Ljava/lang/Object;
.source "CountryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage;->afterPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/CountryPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$1(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "smssdk_country_list_page"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$1(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$2(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$2(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 74
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    new-instance v2, Lcn/smssdk/gui/CountryPage$2$1;

    invoke-direct {v2, p0}, Lcn/smssdk/gui/CountryPage$2$1;-><init>(Lcn/smssdk/gui/CountryPage$2;)V

    invoke-static {v1, v2}, Lcn/smssdk/gui/CountryPage;->access$5(Lcn/smssdk/gui/CountryPage;Lcn/smssdk/EventHandler;)V

    .line 101
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$6(Lcn/smssdk/gui/CountryPage;)Lcn/smssdk/EventHandler;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 103
    invoke-static {}, Lcn/smssdk/SMSSDK;->getSupportedCountries()V

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 108
    :cond_3
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$7(Lcn/smssdk/gui/CountryPage;)V

    goto :goto_0
.end method
