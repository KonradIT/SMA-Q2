.class Lcom/hiflying/smartlink/AbstractSmartLinker$2;
.super Ljava/lang/Object;
.source "AbstractSmartLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinker;->createSenderRunnables(Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Runnable;)[Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

.field private final synthetic val$j:I

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic val$runnables:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinker;[Ljava/lang/Runnable;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iput-object p2, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$runnables:[Ljava/lang/Runnable;

    iput p3, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$j:I

    iput-object p4, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$runnables:[Ljava/lang/Runnable;

    iget v1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$j:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 125
    iget-object v0, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 126
    return-void
.end method
