.class public final Lcom/qiniu/android/http/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# instance fields
.field public final hostAddress:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/qiniu/android/http/Proxy;->hostAddress:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/qiniu/android/http/Proxy;->port:I

    .line 22
    iput-object p3, p0, Lcom/qiniu/android/http/Proxy;->user:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/qiniu/android/http/Proxy;->password:Ljava/lang/String;

    .line 24
    return-void
.end method
