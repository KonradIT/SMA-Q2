.class Lcom/hiflying/smartlink/AbstractSmartLinker$3;
.super Ljava/lang/Object;
.source "AbstractSmartLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinker;->createReceiverRunnable(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iput-object p2, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$3;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-virtual {v1}, Lcom/hiflying/smartlink/AbstractSmartLinker;->setupReceiveAction()Ljava/lang/Runnable;

    move-result-object v0

    .line 142
    .local v0, "receiveRunnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    iget-object v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    return-void
.end method
