.class Lcom/hiflying/smartlink/AbstractSmartLinker$5;
.super Ljava/lang/Object;
.source "AbstractSmartLinker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiflying/smartlink/AbstractSmartLinker;->start(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$ssid:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iput-object p2, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->val$ssid:[Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 251
    const/4 v6, 0x0

    .line 253
    .local v6, "senderActions":[Ljava/lang/Runnable;
    :try_start_0
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v11, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->val$password:Ljava/lang/String;

    iget-object v12, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->val$ssid:[Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lcom/hiflying/smartlink/AbstractSmartLinker;->setupSendAction(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 258
    :goto_0
    const/4 v3, 0x1

    .line 259
    .local v3, "length":I
    if-eqz v6, :cond_0

    .line 260
    array-length v9, v6

    add-int/2addr v3, v9

    .line 263
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 264
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 265
    .local v8, "threadPool":Ljava/util/concurrent/ExecutorService;
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v9, v2}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$3(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v4

    .line 267
    .local v4, "receiverRunnable":Ljava/lang/Runnable;
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iput-boolean v10, v9, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsTimeout:Z

    .line 268
    if-eqz v6, :cond_1

    .line 270
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v9, v2, v6}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$4(Lcom/hiflying/smartlink/AbstractSmartLinker;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Runnable;)[Ljava/lang/Runnable;

    move-result-object v7

    .line 271
    .local v7, "senderRunnables":[Ljava/lang/Runnable;
    if-eqz v7, :cond_1

    .line 272
    array-length v11, v7

    move v9, v10

    :goto_1
    if-lt v9, v11, :cond_2

    .line 277
    .end local v7    # "senderRunnables":[Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v8, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 280
    :try_start_1
    iget-object v11, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iget v9, v9, Lcom/hiflying/smartlink/AbstractSmartLinker;->mTimeoutPeriod:I

    int-to-long v12, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    :goto_2
    iput-boolean v9, v11, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsTimeout:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_3
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    iput-boolean v10, v9, Lcom/hiflying/smartlink/AbstractSmartLinker;->mIsSmartLinking:Z

    .line 287
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 288
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-virtual {v9}, Lcom/hiflying/smartlink/AbstractSmartLinker;->closeDestroySmartConfigSocket()V

    .line 289
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    invoke-static {v9}, Lcom/hiflying/smartlink/AbstractSmartLinker;->access$2(Lcom/hiflying/smartlink/AbstractSmartLinker;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 291
    iget-object v9, p0, Lcom/hiflying/smartlink/AbstractSmartLinker$5;->this$0:Lcom/hiflying/smartlink/AbstractSmartLinker;

    const-string v10, "Smart Link finished!"

    invoke-static {v9, v10}, Lcom/hiflying/commons/log/HFLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    return-void

    .line 254
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "length":I
    .end local v4    # "receiverRunnable":Ljava/lang/Runnable;
    .end local v8    # "threadPool":Ljava/util/concurrent/ExecutorService;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v3    # "length":I
    .restart local v4    # "receiverRunnable":Ljava/lang/Runnable;
    .restart local v7    # "senderRunnables":[Ljava/lang/Runnable;
    .restart local v8    # "threadPool":Ljava/util/concurrent/ExecutorService;
    :cond_2
    aget-object v5, v7, v9

    .line 273
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-interface {v8, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 280
    .end local v5    # "runnable":Ljava/lang/Runnable;
    .end local v7    # "senderRunnables":[Ljava/lang/Runnable;
    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    .line 281
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
