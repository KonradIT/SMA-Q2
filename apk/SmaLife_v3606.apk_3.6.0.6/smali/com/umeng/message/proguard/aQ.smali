.class Lcom/umeng/message/proguard/aQ;
.super Ljava/lang/Object;
.source "MessageTime.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    .line 12
    iput-boolean p1, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    .line 13
    iput-object p2, p0, Lcom/umeng/message/proguard/aQ;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 18
    const-wide/16 v0, 0x4e20

    .line 20
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method a(J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x7d0

    .line 59
    iget-object v2, p0, Lcom/umeng/message/proguard/aQ;->b:Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lcom/umeng/message/proguard/bj;->a(JLjava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 60
    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    .line 63
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method b()J
    .locals 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 25
    const-wide/16 v0, 0x4e20

    .line 27
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1d4c0

    goto :goto_0
.end method

.method c()J
    .locals 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 32
    const-wide/16 v0, 0x3e8

    .line 34
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method d()J
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 39
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    .line 41
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method e()J
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 46
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method f()J
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 53
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/umeng/message/proguard/aQ;->a(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 68
    const-wide/16 v0, 0x1388

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x9c40

    goto :goto_0
.end method

.method h()J
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 75
    const-wide/16 v0, 0x2710

    .line 77
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4e20

    goto :goto_0
.end method

.method i()J
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 82
    const-wide/32 v0, 0x927c0

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0
.end method

.method j()J
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/umeng/message/proguard/aQ;->a:Z

    if-eqz v0, :cond_0

    .line 89
    const-wide/16 v0, 0x7530

    .line 91
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method
