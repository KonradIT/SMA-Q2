.class Lcom/smalife/MyApplication$1$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/MyApplication$1;->dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/entity/UMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smalife/MyApplication$1;

.field private final synthetic val$msg:Lcom/umeng/message/entity/UMessage;


# direct methods
.method constructor <init>(Lcom/smalife/MyApplication$1;Lcom/umeng/message/entity/UMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/MyApplication$1$1;->this$1:Lcom/smalife/MyApplication$1;

    iput-object p2, p0, Lcom/smalife/MyApplication$1$1;->val$msg:Lcom/umeng/message/entity/UMessage;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/smalife/MyApplication$1$1;->this$1:Lcom/smalife/MyApplication$1;

    invoke-static {v0}, Lcom/smalife/MyApplication$1;->access$0(Lcom/smalife/MyApplication$1;)Lcom/smalife/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smalife/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/smalife/MyApplication$1$1;->val$msg:Lcom/umeng/message/entity/UMessage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UTrack;->trackMsgClick(Lcom/umeng/message/entity/UMessage;Z)V

    .line 608
    return-void
.end method
