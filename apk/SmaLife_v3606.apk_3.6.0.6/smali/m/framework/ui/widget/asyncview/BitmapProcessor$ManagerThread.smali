.class Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;
.super Ljava/util/Timer;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerThread"
.end annotation


# instance fields
.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 6
    .param p1, "bp"    # Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 116
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 117
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;

    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V

    .line 130
    .local v1, "tt":Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->schedule(Ljava/util/TimerTask;JJ)V

    .line 131
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->scan()V

    return-void
.end method

.method private scan()V
    .locals 9

    .prologue
    .line 134
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 159
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    .local v2, "curTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 140
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    .line 141
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    new-instance v7, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v8, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v7, v8}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v7, v6, v4

    .line 142
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "worker "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v7, v6, v4

    if-nez v4, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-static {v7, v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 144
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->start()V

    .line 139
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 148
    :cond_4
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 149
    .local v0, "curCost":J
    const-wide/16 v6, 0x4e20

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 150
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 152
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z

    move-result v5

    .line 153
    .local v5, "localType":Z
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    new-instance v7, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    iget-object v8, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-direct {v7, v8}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    aput-object v7, v6, v4

    .line 154
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "worker "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->setName(Ljava/lang/String;)V

    .line 155
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-static {v6, v5}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V

    .line 156
    iget-object v6, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    invoke-static {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->start()V

    goto :goto_2
.end method
