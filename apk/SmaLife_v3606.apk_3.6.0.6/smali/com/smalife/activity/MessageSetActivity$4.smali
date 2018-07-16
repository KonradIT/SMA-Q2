.class Lcom/smalife/activity/MessageSetActivity$4;
.super Ljava/lang/Object;
.source "MessageSetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MessageSetActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MessageSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$4;->this$0:Lcom/smalife/activity/MessageSetActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$4;->this$0:Lcom/smalife/activity/MessageSetActivity;

    iget-object v1, p0, Lcom/smalife/activity/MessageSetActivity$4;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/MessageSetActivity;->getAppInfos()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smalife/activity/MessageSetActivity;->access$4(Lcom/smalife/activity/MessageSetActivity;Ljava/util/List;)V

    .line 100
    return-void
.end method
