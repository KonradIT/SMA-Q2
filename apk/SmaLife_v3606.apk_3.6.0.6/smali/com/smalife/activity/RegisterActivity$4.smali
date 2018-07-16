.class Lcom/smalife/activity/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/accloud/cloudservice/PayloadCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 2
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 265
    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v1

    .line 264
    invoke-static {v0, v1}, Lcom/smalife/tools/ShowErrorToast;->showToast(Landroid/content/Context;I)V

    .line 266
    return-void
.end method

.method public success(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "isExist"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v0, v0, Lcom/smalife/activity/RegisterActivity;->context:Landroid/content/Context;

    .line 273
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 274
    const v2, 0x7f0900d2

    .line 273
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v0}, Lcom/smalife/activity/RegisterActivity;->access$8(Lcom/smalife/activity/RegisterActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 278
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    const-string v1, ""

    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity;->access$9(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v3}, Lcom/smalife/activity/RegisterActivity;->access$10(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 279
    iget-object v5, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v5}, Lcom/smalife/activity/RegisterActivity;->access$11(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/smalife/activity/RegisterActivity;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity;->access$9(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v3}, Lcom/smalife/activity/RegisterActivity;->access$10(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 282
    iget-object v5, p0, Lcom/smalife/activity/RegisterActivity$4;->this$0:Lcom/smalife/activity/RegisterActivity;

    invoke-static {v5}, Lcom/smalife/activity/RegisterActivity;->access$11(Lcom/smalife/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/smalife/activity/RegisterActivity;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/RegisterActivity$4;->success(Ljava/lang/Boolean;)V

    return-void
.end method
