.class Lcom/smalife/activity/PairActivity$1;
.super Ljava/lang/Object;
.source "PairActivity.java"

# interfaces
.implements Lcom/accloud/cloudservice/PayloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/PairActivity;->askService(Ljava/lang/String;)V
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
        "Lcom/accloud/service/ACMsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/accloud/service/ACException;)V
    .locals 3
    .param p1, "e"    # Lcom/accloud/service/ACException;

    .prologue
    .line 196
    const-string v0, "ljh"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/error_code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/accloud/service/ACException;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method public success(Lcom/accloud/service/ACMsg;)V
    .locals 6
    .param p1, "msg"    # Lcom/accloud/service/ACMsg;

    .prologue
    const/16 v5, 0x50

    .line 176
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string v2, "rt"

    invoke-virtual {p1, v2}, Lcom/accloud/service/ACMsg;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 179
    .local v0, "result":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    iget-object v2, v2, Lcom/smalife/activity/PairActivity;->context:Landroid/content/Context;

    .line 181
    iget-object v3, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090179

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 183
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    iget-object v2, v2, Lcom/smalife/activity/PairActivity;->context:Landroid/content/Context;

    .line 185
    iget-object v3, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 187
    :cond_3
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    iget-object v2, v2, Lcom/smalife/activity/PairActivity;->context:Landroid/content/Context;

    .line 189
    iget-object v3, p0, Lcom/smalife/activity/PairActivity$1;->this$0:Lcom/smalife/activity/PairActivity;

    invoke-virtual {v3}, Lcom/smalife/activity/PairActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/accloud/service/ACMsg;

    invoke-virtual {p0, p1}, Lcom/smalife/activity/PairActivity$1;->success(Lcom/accloud/service/ACMsg;)V

    return-void
.end method
