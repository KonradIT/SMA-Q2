.class public final Lorg/android/agoo/client/MtopProxyRequest;
.super Ljava/lang/Object;
.source "MtopProxyRequest.java"


# instance fields
.field private volatile api:Ljava/lang/String;

.field private volatile appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private volatile ecode:Ljava/lang/String;

.field private volatile hasSigin:Z

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sId:Ljava/lang/String;

.field private sysParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile time:J

.field private volatile ttId:Ljava/lang/String;

.field private volatile v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->time:J

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->hasSigin:Z

    .line 27
    iput-object v2, p0, Lorg/android/agoo/client/MtopProxyRequest;->params:Ljava/util/Map;

    .line 28
    iput-object v2, p0, Lorg/android/agoo/client/MtopProxyRequest;->sysParams:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->params:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->sysParams:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public final getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->api:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getEcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->ecode:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final getSId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->sId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSysParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->sysParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->time:J

    return-wide v0
.end method

.method public final getTtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->ttId:Ljava/lang/String;

    return-object v0
.end method

.method public final getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final isHasSigin()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->hasSigin:Z

    return v0
.end method

.method public final putParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public final putSysParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/android/agoo/client/MtopProxyRequest;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public final setApi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->api:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->appKey:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final setAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->appSecret:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public final setEcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->ecode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final setHasSigin(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->hasSigin:Z

    .line 41
    return-void
.end method

.method public final setSId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->sId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public final setTime(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->time:J

    .line 49
    return-void
.end method

.method public final setTtId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->ttId:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/android/agoo/client/MtopProxyRequest;->v:Ljava/lang/String;

    .line 80
    return-void
.end method
