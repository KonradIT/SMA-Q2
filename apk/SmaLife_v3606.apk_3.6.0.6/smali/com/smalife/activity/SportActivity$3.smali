.class Lcom/smalife/activity/SportActivity$3;
.super Ljava/lang/Object;
.source "SportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/SportActivity;->getCurDaySport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 169
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/activity/SportActivity;->access$12(Lcom/smalife/activity/SportActivity;I)V

    .line 170
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v1, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v2, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v2}, Lcom/smalife/activity/SportActivity;->access$15(Lcom/smalife/activity/SportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smalife/activity/SportActivity;->access$16(Lcom/smalife/activity/SportActivity;Ljava/lang/String;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SportActivity;->access$17(Lcom/smalife/activity/SportActivity;Lcom/smalife/db/entity/AimEntity;)V

    .line 171
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportActivity;->access$8(Lcom/smalife/activity/SportActivity;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v1, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$8(Lcom/smalife/activity/SportActivity;)Lcom/smalife/db/entity/AimEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smalife/db/entity/AimEntity;->getSteps()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SportActivity;->access$18(Lcom/smalife/activity/SportActivity;I)V

    .line 173
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportActivity;->access$7(Lcom/smalife/activity/SportActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    iget-object v1, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v1}, Lcom/smalife/activity/SportActivity;->access$9(Lcom/smalife/activity/SportActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smalife/activity/SportActivity;->access$18(Lcom/smalife/activity/SportActivity;I)V

    .line 176
    iget-object v0, p0, Lcom/smalife/activity/SportActivity$3;->this$0:Lcom/smalife/activity/SportActivity;

    invoke-static {v0}, Lcom/smalife/activity/SportActivity;->access$7(Lcom/smalife/activity/SportActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
