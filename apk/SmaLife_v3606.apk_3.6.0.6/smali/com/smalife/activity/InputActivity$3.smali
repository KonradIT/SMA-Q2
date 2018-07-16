.class Lcom/smalife/activity/InputActivity$3;
.super Ljava/lang/Object;
.source "InputActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/VoidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/InputActivity;->updateUser(Lcom/smalife/db/entity/UserEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/InputActivity;

.field private final synthetic val$user:Lcom/smalife/db/entity/UserEntity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/InputActivity;Lcom/smalife/db/entity/UserEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    iput-object p2, p0, Lcom/smalife/activity/InputActivity$3;->val$user:Lcom/smalife/db/entity/UserEntity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 228
    const-string v0, "ljh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public success()V
    .locals 5

    .prologue
    .line 215
    iget-object v1, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    iget-object v1, v1, Lcom/smalife/activity/InputActivity;->context:Landroid/content/Context;

    .line 216
    iget-object v2, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-virtual {v2}, Lcom/smalife/activity/InputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    .line 215
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 218
    iget-object v1, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-static {v1}, Lcom/smalife/activity/InputActivity;->access$1(Lcom/smalife/activity/InputActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-static {v2}, Lcom/smalife/activity/InputActivity;->access$2(Lcom/smalife/activity/InputActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smalife/db/SmaDao;->checkUserExist(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "rt":I
    if-lez v0, :cond_0

    .line 220
    iget-object v1, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-static {v1}, Lcom/smalife/activity/InputActivity;->access$1(Lcom/smalife/activity/InputActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-static {v2}, Lcom/smalife/activity/InputActivity;->access$2(Lcom/smalife/activity/InputActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smalife/activity/InputActivity$3;->val$user:Lcom/smalife/db/entity/UserEntity;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/smalife/db/SmaDao;->modifyUserInfo(Ljava/lang/String;Lcom/smalife/db/entity/UserEntity;I)Z

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/smalife/activity/InputActivity$3;->this$0:Lcom/smalife/activity/InputActivity;

    invoke-static {v1}, Lcom/smalife/activity/InputActivity;->access$1(Lcom/smalife/activity/InputActivity;)Lcom/smalife/db/SmaDao;

    move-result-object v1

    iget-object v2, p0, Lcom/smalife/activity/InputActivity$3;->val$user:Lcom/smalife/db/entity/UserEntity;

    invoke-virtual {v1, v2}, Lcom/smalife/db/SmaDao;->addUser(Lcom/smalife/db/entity/UserEntity;)V

    goto :goto_0
.end method
