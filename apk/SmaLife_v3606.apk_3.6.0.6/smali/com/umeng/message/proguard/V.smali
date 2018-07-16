.class public Lcom/umeng/message/proguard/V;
.super Lcom/umeng/message/proguard/W;
.source "UTMCRealTimeDebuggingBiz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/umeng/message/proguard/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p2}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {p2}, Lcom/umeng/message/proguard/t;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/umeng/message/proguard/S;->a()Lcom/umeng/message/proguard/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/S;->c()V

    .line 26
    :cond_0
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v1, "B01N4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-object v0
.end method
