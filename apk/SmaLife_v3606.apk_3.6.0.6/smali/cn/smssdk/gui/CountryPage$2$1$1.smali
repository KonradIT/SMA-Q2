.class Lcn/smssdk/gui/CountryPage$2$1$1;
.super Ljava/lang/Object;
.source "CountryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage$2$1;->afterEvent(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcn/smssdk/gui/CountryPage$2$1;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage$2$1;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    iput p2, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$3(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 84
    :cond_0
    iget v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$result:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 85
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v2

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcn/smssdk/gui/CountryPage;->access$4(Lcn/smssdk/gui/CountryPage;Ljava/util/ArrayList;)V

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->val$data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$1(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "smssdk_network_error"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, "resId":I
    if-lez v0, :cond_2

    .line 90
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$1(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_2
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2$1$1;->this$2:Lcn/smssdk/gui/CountryPage$2$1;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2$1;->access$0(Lcn/smssdk/gui/CountryPage$2$1;)Lcn/smssdk/gui/CountryPage$2;

    move-result-object v1

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage$2;->access$0(Lcn/smssdk/gui/CountryPage$2;)Lcn/smssdk/gui/CountryPage;

    move-result-object v1

    invoke-virtual {v1}, Lcn/smssdk/gui/CountryPage;->finish()V

    goto :goto_0
.end method
