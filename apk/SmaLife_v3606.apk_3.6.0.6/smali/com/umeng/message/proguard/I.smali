.class public Lcom/umeng/message/proguard/I;
.super Ljava/lang/Object;
.source "UTMCSimpleEventIDStrategier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/message/proguard/I$b;,
        Lcom/umeng/message/proguard/I$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Object;


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/message/proguard/I$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/I;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/I;->c:Ljava/util/Random;

    .line 133
    return-void
.end method


# virtual methods
.method public a(I)Lcom/umeng/message/proguard/I$b;
    .locals 4

    .prologue
    .line 50
    sget-object v1, Lcom/umeng/message/proguard/I;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    if-gez p1, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Lcom/umeng/message/proguard/I$b;

    invoke-direct {v0}, Lcom/umeng/message/proguard/I$b;-><init>()V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/I$b;->a(Z)V

    .line 55
    monitor-exit v1

    .line 107
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_1
    :try_start_1
    rem-int/lit8 v0, p1, 0x64

    sub-int v0, p1, v0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 70
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 75
    :cond_2
    rem-int/lit16 v0, p1, 0x3e8

    sub-int v0, p1, v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 78
    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 83
    :cond_3
    const/16 v0, 0x4e20

    if-le p1, v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    const-string v2, "-3"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 85
    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1

    goto/16 :goto_0

    .line 91
    :cond_4
    const/16 v0, 0x2710

    if-le p1, v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    const-string v2, "-2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 93
    if-eqz v0, :cond_5

    .line 94
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1

    goto/16 :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    const-string v2, "-1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/I$a;

    .line 100
    if-nez v0, :cond_6

    .line 101
    new-instance v0, Lcom/umeng/message/proguard/I$b;

    invoke-direct {v0}, Lcom/umeng/message/proguard/I$b;-><init>()V

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/I$b;->a(Z)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/message/proguard/I$b;->a(I)V

    .line 104
    monitor-exit v1

    goto/16 :goto_0

    .line 107
    :cond_6
    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/I;->a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lcom/umeng/message/proguard/I$a;)Lcom/umeng/message/proguard/I$b;
    .locals 4

    .prologue
    const/16 v2, 0x64

    const/4 v3, 0x1

    .line 31
    new-instance v0, Lcom/umeng/message/proguard/I$b;

    invoke-direct {v0}, Lcom/umeng/message/proguard/I$b;-><init>()V

    .line 32
    invoke-virtual {v0, v3}, Lcom/umeng/message/proguard/I$b;->b(Z)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-static {p1}, Lcom/umeng/message/proguard/I$a;->a(Lcom/umeng/message/proguard/I$a;)I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-static {p1}, Lcom/umeng/message/proguard/I$a;->a(Lcom/umeng/message/proguard/I$a;)I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    invoke-static {p1}, Lcom/umeng/message/proguard/I$a;->a(Lcom/umeng/message/proguard/I$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/I$b;->a(I)V

    .line 37
    iget-object v1, p0, Lcom/umeng/message/proguard/I;->c:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    .line 38
    invoke-static {p1}, Lcom/umeng/message/proguard/I$a;->a(Lcom/umeng/message/proguard/I$a;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    invoke-virtual {v0, v3}, Lcom/umeng/message/proguard/I$b;->a(Z)V

    .line 40
    invoke-virtual {v0}, Lcom/umeng/message/proguard/I$b;->a()V

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/I$b;->a(Z)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 16
    sget-object v1, Lcom/umeng/message/proguard/I;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    if-ltz p2, :cond_1

    .line 18
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    new-instance v2, Lcom/umeng/message/proguard/I$a;

    invoke-direct {v2, p0}, Lcom/umeng/message/proguard/I$a;-><init>(Lcom/umeng/message/proguard/I;)V

    .line 23
    invoke-virtual {v2, p1}, Lcom/umeng/message/proguard/I$a;->a(I)V

    .line 24
    invoke-virtual {v2, p2}, Lcom/umeng/message/proguard/I$a;->b(I)V

    .line 25
    iget-object v3, p0, Lcom/umeng/message/proguard/I;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
