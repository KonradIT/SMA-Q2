.class Lcom/smalife/activity/LoginActivity$2$2$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/LoginActivity$2$2;->success(Lcom/accloud/service/ACObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/smalife/activity/LoginActivity$2$2;


# direct methods
.method constructor <init>(Lcom/smalife/activity/LoginActivity$2$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/LoginActivity$2$2$1;->this$2:Lcom/smalife/activity/LoginActivity$2$2;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2$1;->this$2:Lcom/smalife/activity/LoginActivity$2$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2$2;->access$1(Lcom/smalife/activity/LoginActivity$2$2;)Lcom/smalife/activity/LoginActivity$2;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    .line 494
    const-class v2, Lcom/smalife/activity/InputActivity;

    .line 492
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 497
    .local v0, "inputIntent":Landroid/content/Intent;
    const-string v1, "user"

    .line 498
    iget-object v2, p0, Lcom/smalife/activity/LoginActivity$2$2$1;->this$2:Lcom/smalife/activity/LoginActivity$2$2;

    invoke-static {v2}, Lcom/smalife/activity/LoginActivity$2$2;->access$1(Lcom/smalife/activity/LoginActivity$2$2;)Lcom/smalife/activity/LoginActivity$2;

    move-result-object v2

    invoke-static {v2}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/smalife/activity/LoginActivity;->entity:Lcom/smalife/db/entity/UserEntity;

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2$1;->this$2:Lcom/smalife/activity/LoginActivity$2$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2$2;->access$1(Lcom/smalife/activity/LoginActivity$2$2;)Lcom/smalife/activity/LoginActivity$2;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smalife/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 500
    iget-object v1, p0, Lcom/smalife/activity/LoginActivity$2$2$1;->this$2:Lcom/smalife/activity/LoginActivity$2$2;

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2$2;->access$1(Lcom/smalife/activity/LoginActivity$2$2;)Lcom/smalife/activity/LoginActivity$2;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/activity/LoginActivity$2;->access$1(Lcom/smalife/activity/LoginActivity$2;)Lcom/smalife/activity/LoginActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/activity/LoginActivity;->finish()V

    .line 501
    return-void
.end method
