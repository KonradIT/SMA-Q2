.class Lcn/smssdk/gui/IdentifyNumPage$9;
.super Ljava/lang/Object;
.source "IdentifyNumPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->afterSubmit(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;

.field private final synthetic val$data:Ljava/lang/Object;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    iput p2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->val$result:I

    iput-object p3, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->val$data:Ljava/lang/Object;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 384
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$10(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 388
    :cond_0
    iget v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->val$result:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v0, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "res"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "page"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v2, "phone"

    iget-object v3, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v2, v0}, Lcn/smssdk/gui/IdentifyNumPage;->setResult(Ljava/util/HashMap;)V

    .line 394
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-virtual {v2}, Lcn/smssdk/gui/IdentifyNumPage;->finish()V

    .line 404
    .end local v0    # "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->val$data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v2

    .line 399
    const-string v3, "smssdk_virificaition_code_wrong"

    .line 398
    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, "resId":I
    if-lez v1, :cond_1

    .line 401
    iget-object v2, p0, Lcn/smssdk/gui/IdentifyNumPage$9;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {v2}, Lcn/smssdk/gui/IdentifyNumPage;->access$6(Lcn/smssdk/gui/IdentifyNumPage;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
