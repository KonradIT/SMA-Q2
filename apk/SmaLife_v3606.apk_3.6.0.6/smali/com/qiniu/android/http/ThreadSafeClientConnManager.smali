.class public final Lcom/qiniu/android/http/ThreadSafeClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ThreadSafeClientConnManager.java"


# instance fields
.field private final dns:Lcom/qiniu/android/dns/DnsManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p3, "dns"    # Lcom/qiniu/android/dns/DnsManager;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 16
    iput-object p3, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    .line 17
    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 2
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/qiniu/android/http/AsyncHttpClientMod;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/dns/DnsManager;

    move-object v0, v1

    .line 23
    .local v0, "d":Lcom/qiniu/android/dns/DnsManager;
    :goto_0
    new-instance v1, Lcom/qiniu/android/http/ClientConnectionOperator;

    invoke-direct {v1, p1, v0}, Lcom/qiniu/android/http/ClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/qiniu/android/dns/DnsManager;)V

    return-object v1

    .line 22
    .end local v0    # "d":Lcom/qiniu/android/dns/DnsManager;
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/http/ThreadSafeClientConnManager;->dns:Lcom/qiniu/android/dns/DnsManager;

    goto :goto_0
.end method
