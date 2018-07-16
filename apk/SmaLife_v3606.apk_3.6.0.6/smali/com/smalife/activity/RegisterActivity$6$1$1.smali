.class Lcom/smalife/activity/RegisterActivity$6$1$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity$6$1;->success(Lcom/accloud/service/ACObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smalife/activity/RegisterActivity$6$1;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$6$1$1;->this$2:Lcom/smalife/activity/RegisterActivity$6$1;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    .line 425
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1$1;->this$2:Lcom/smalife/activity/RegisterActivity$6$1;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6$1;->access$1(Lcom/smalife/activity/RegisterActivity$6$1;)Lcom/smalife/activity/RegisterActivity$6;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    .line 426
    const-class v2, Lcom/smalife/activity/InputActivity;

    .line 424
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v0, "inputIntent":Landroid/content/Intent;
    const-string v1, "user"

    .line 430
    iget-object v2, p0, Lcom/smalife/activity/RegisterActivity$6$1$1;->this$2:Lcom/smalife/activity/RegisterActivity$6$1;

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity$6$1;->access$1(Lcom/smalife/activity/RegisterActivity$6$1;)Lcom/smalife/activity/RegisterActivity$6;

    move-result-object v2

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/smalife/activity/RegisterActivity;->access$14(Lcom/smalife/activity/RegisterActivity;)Lcom/smalife/db/entity/UserEntity;

    move-result-object v2

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1$1;->this$2:Lcom/smalife/activity/RegisterActivity$6$1;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6$1;->access$1(Lcom/smalife/activity/RegisterActivity$6$1;)Lcom/smalife/activity/RegisterActivity$6;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smalife/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$6$1$1;->this$2:Lcom/smalife/activity/RegisterActivity$6$1;

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6$1;->access$1(Lcom/smalife/activity/RegisterActivity$6$1;)Lcom/smalife/activity/RegisterActivity$6;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/RegisterActivity$6;->access$1(Lcom/smalife/activity/RegisterActivity$6;)Lcom/smalife/activity/RegisterActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/activity/RegisterActivity;->finish()V

    .line 433
    return-void
.end method
