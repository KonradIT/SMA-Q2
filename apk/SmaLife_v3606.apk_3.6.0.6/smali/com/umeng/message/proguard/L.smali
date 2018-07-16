.class public Lcom/umeng/message/proguard/L;
.super Ljava/lang/Object;
.source "UTMCLogTransferMain.java"

# interfaces
.implements Lcom/umeng/message/proguard/O$a;


# static fields
.field private static a:Lcom/umeng/message/proguard/L;


# instance fields
.field private volatile b:Z

.field private c:Lcom/umeng/message/proguard/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/umeng/message/proguard/L;

    invoke-direct {v0}, Lcom/umeng/message/proguard/L;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/L;->a:Lcom/umeng/message/proguard/L;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/L;->b:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/L;->c:Lcom/umeng/message/proguard/O;

    .line 29
    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/L;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/umeng/message/proguard/L;->a:Lcom/umeng/message/proguard/L;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/umeng/message/proguard/X;

    invoke-direct {v0}, Lcom/umeng/message/proguard/X;-><init>()V

    .line 39
    invoke-static {}, Lcom/umeng/message/proguard/E;->a()Lcom/umeng/message/proguard/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/W;)V

    .line 40
    new-instance v1, Lcom/umeng/message/proguard/V;

    invoke-direct {v1}, Lcom/umeng/message/proguard/V;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/X;->a(Lcom/umeng/message/proguard/W;)V

    .line 41
    invoke-virtual {v0}, Lcom/umeng/message/proguard/X;->a()V

    .line 42
    new-instance v0, Lcom/umeng/message/proguard/O;

    invoke-direct {v0}, Lcom/umeng/message/proguard/O;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/L;->c:Lcom/umeng/message/proguard/O;

    .line 43
    iget-object v0, p0, Lcom/umeng/message/proguard/L;->c:Lcom/umeng/message/proguard/O;

    invoke-virtual {v0, p0}, Lcom/umeng/message/proguard/O;->a(Lcom/umeng/message/proguard/O$a;)V

    .line 44
    iget-object v0, p0, Lcom/umeng/message/proguard/L;->c:Lcom/umeng/message/proguard/O;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/O;->a()V

    .line 46
    :cond_0
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 84
    invoke-static {}, Lcom/umeng/message/proguard/U;->a()Lcom/umeng/message/proguard/U;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/umeng/message/proguard/U;->a(ILjava/lang/Object;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    const-string v1, "_priority"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v0, "_priority"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/Q;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-static {}, Lcom/umeng/message/proguard/D;->c()Lcom/umeng/message/proguard/D;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/umeng/message/proguard/D;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    iget-boolean v0, p0, Lcom/umeng/message/proguard/L;->b:Z

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/umeng/message/proguard/L;->b()V

    .line 59
    iput-boolean v2, p0, Lcom/umeng/message/proguard/L;->b:Z

    .line 63
    :cond_0
    if-nez p1, :cond_1

    .line 64
    invoke-static {}, Lcom/umeng/message/proguard/D;->c()Lcom/umeng/message/proguard/D;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/umeng/message/proguard/D;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    :cond_2
    const-string v0, "setRequestAuthentication"

    const-string v1, "Fatal Error,no appkey was setted in RequestAuthentication"

    invoke-static {v2, v0, v1}, Lcom/umeng/message/proguard/y;->c(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/umeng/message/proguard/L;->c:Lcom/umeng/message/proguard/O;

    invoke-virtual {v0, p1}, Lcom/umeng/message/proguard/O;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/L;->c(Ljava/util/Map;)V

    .line 106
    return-void
.end method
