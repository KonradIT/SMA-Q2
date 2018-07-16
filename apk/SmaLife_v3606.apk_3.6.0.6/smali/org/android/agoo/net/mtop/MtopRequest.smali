.class public final Lorg/android/agoo/net/mtop/MtopRequest;
.super Ljava/lang/Object;
.source "MtopRequest.java"


# static fields
.field public static final a:Ljava/lang/String; = "&"


# instance fields
.field private volatile b:Ljava/lang/String;

.field private volatile c:Ljava/lang/String;

.field private volatile d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Ljava/lang/String;

.field private volatile i:J

.field private volatile j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
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

.field private m:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->i:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->j:Z

    .line 71
    iput-object v2, p0, Lorg/android/agoo/net/mtop/MtopRequest;->l:Ljava/util/Map;

    .line 72
    iput-object v2, p0, Lorg/android/agoo/net/mtop/MtopRequest;->m:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->l:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->m:Ljava/util/Map;

    .line 77
    return-void
.end method


# virtual methods
.method public final getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getEcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->f:Ljava/lang/String;

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
    .line 140
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final getSId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->e:Ljava/lang/String;

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
    .line 80
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->m:Ljava/util/Map;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->i:J

    return-wide v0
.end method

.method public final getTtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isHasSigin()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->j:Z

    return v0
.end method

.method public final putParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public final putParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 97
    return-void
.end method

.method public final putSysParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public final putSysParams(Ljava/util/Map;)V
    .locals 1
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
    .line 88
    iget-object v0, p0, Lorg/android/agoo/net/mtop/MtopRequest;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public final setApi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->b:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->g:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public final setAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->k:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->h:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final setEcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->f:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public final setHasSigin(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->j:Z

    .line 44
    return-void
.end method

.method public final setSId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->e:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public final setTime(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->i:J

    .line 52
    return-void
.end method

.method public final setTtId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->d:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/android/agoo/net/mtop/MtopRequest;->c:Ljava/lang/String;

    .line 121
    return-void
.end method
