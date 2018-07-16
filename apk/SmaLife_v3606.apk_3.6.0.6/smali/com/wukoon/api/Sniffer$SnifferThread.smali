.class Lcom/wukoon/api/Sniffer$SnifferThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wukoon/api/Sniffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnifferThread"
.end annotation


# instance fields
.field private synthetic jZ:Lcom/wukoon/api/Sniffer;


# direct methods
.method private constructor <init>(Lcom/wukoon/api/Sniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wukoon/api/Sniffer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wukoon/api/Sniffer$SnifferThread;-><init>(Lcom/wukoon/api/Sniffer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->c(Lcom/wukoon/api/Sniffer;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->d(Lcom/wukoon/api/Sniffer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->e(Lcom/wukoon/api/Sniffer;)V

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->f(Lcom/wukoon/api/Sniffer;)V

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->g(Lcom/wukoon/api/Sniffer;)V

    iget-object v0, p0, Lcom/wukoon/api/Sniffer$SnifferThread;->jZ:Lcom/wukoon/api/Sniffer;

    invoke-static {v0}, Lcom/wukoon/api/Sniffer;->h(Lcom/wukoon/api/Sniffer;)V

    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
