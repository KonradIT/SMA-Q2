.class public final Lcom/umeng/message/proguard/aD;
.super Ljava/lang/Object;
.source "UTHelper.java"


# static fields
.field private static final A:Ljava/lang/String; = "agoo_checkpackage_stop"

.field private static final B:Ljava/lang/String; = "agoo_start_method"

.field private static final C:Ljava/lang/String; = "agoo_pushService_connect_success"

.field private static final D:Ljava/lang/String; = "agoo_pushservice_connect_error"

.field private static final E:Ljava/lang/String; = "agoo_somanager_start"

.field private static final F:Ljava/lang/String; = "agoo_event_register_log"

.field private static final G:Ljava/lang/String; = "agoo_event_election_log"

.field private static final H:Ljava/lang/String; = "agoo_event_connect_log"

.field private static final I:Ljava/lang/String; = "agoo_event_getServiceMsg_log"

.field private static final J:Ljava/lang/String; = "agoo_event_dns_log"

.field private static final K:Ljava/lang/String; = "agoo_event_election_result_log"

.field private static final L:Ljava/lang/String; = "agoo_event_register_begin_log"

.field private static final M:Ljava/lang/String; = "agoo_event_force_http"

.field private static final N:Ljava/lang/String; = "agoo_event_force_WifiProxy"

.field private static volatile O:Z = false

.field private static volatile P:Lorg/android/agoo/ut/UT; = null

.field private static final Q:Ljava/lang/String; = "shared_not_found"

.field private static final R:Ljava/lang/String; = "class_not_found"

.field private static final S:Ljava/lang/String; = "utdid_null"

.field private static final T:Ljava/lang/String; = "appkey_or_ttid_null"

.field private static final U:Ljava/lang/String; = "utdid_error"

.field private static final a:I = 0x1051b9cd

.field private static final b:I = 0x101d2

.field private static final c:Ljava/lang/String; = "agoo_connect"

.field private static final d:Ljava/lang/String; = "agoo_connect_timeout"

.field private static final e:Ljava/lang/String; = "agoo_service"

.field private static final f:Ljava/lang/String; = "agoo_ervice_sec_error_start"

.field private static final g:Ljava/lang/String; = "agoo_service_error_start"

.field private static final h:Ljava/lang/String; = "agoo_message"

.field private static final i:Ljava/lang/String; = "agoo_message_http_error"

.field private static final j:Ljava/lang/String; = "agoo_message_parse_error"

.field private static final k:Ljava/lang/String; = "agoo_message_decrypted_error"

.field private static final l:Ljava/lang/String; = "agoo_message_body_null"

.field private static final m:Ljava/lang/String; = "agoo_message_size_large"

.field private static final n:Ljava/lang/String; = "agoo_event_message_notify"

.field private static final o:Ljava/lang/String; = "agoo_election_times"

.field private static final p:Ljava/lang/String; = "agoo_election"

.field private static final q:Ljava/lang/String; = "agoo_election_no_result"

.field private static final r:Ljava/lang/String; = "agoo_election_error"

.field private static final s:Ljava/lang/String; = "agoo_election_register"

.field private static final t:Ljava/lang/String; = "agoo_sysfile_error"

.field private static final u:Ljava/lang/String; = "agoo_register_error"

.field private static final v:Ljava/lang/String; = "agoo_unregister"

.field private static final w:Ljava/lang/String; = "agoo_register"

.field private static final x:Ljava/lang/String; = "agoo_app_ping"

.field private static final y:Ljava/lang/String; = "agoo_android_module"

.field private static final z:Ljava/lang/String; = "agoo_spyd_force_chunked"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/proguard/aD;->O:Z

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/umeng/message/proguard/aT;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    .line 927
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 933
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail_reasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 941
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection_start_date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 943
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection_stop_date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close_connection_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 947
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close_connection_date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 949
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aT;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 951
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    const-string v1, "actionType=connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    return-object v0
.end method

.method private static a(Lcom/umeng/message/proguard/aU;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 871
    .line 872
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail_reasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 886
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 892
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseBody="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aU;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    return-object v0
.end method

.method private static a(Lcom/umeng/message/proguard/aV;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 900
    .line 901
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "utdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 907
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 911
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail_reasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 915
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackIsSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 917
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/umeng/message/proguard/aV;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 919
    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    const-string v1, "actionType=get_service_msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    return-object v0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    :try_start_0
    sget-boolean v0, Lcom/umeng/message/proguard/aD;->O:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lorg/android/agoo/ut/UTFactroy;->getInstance()Lorg/android/agoo/ut/UTFactroy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/android/agoo/ut/UTFactroy;->getLogger(Landroid/content/Context;)Lorg/android/agoo/ut/UT;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    .line 99
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/message/proguard/aD;->O:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 510
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 512
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;J)V
    .locals 9

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, p1

    .line 187
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 188
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;JJ)V
    .locals 9

    .prologue
    .line 463
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 465
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect_timeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public static final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 490
    const-wide/16 v0, 0x0

    .line 491
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 492
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    move-wide v4, v0

    .line 494
    :goto_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 495
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 496
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_connect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_0
    :goto_1
    return-void

    .line 501
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-wide v4, v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lcom/umeng/message/proguard/aT;)V
    .locals 8

    .prologue
    .line 766
    if-nez p1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 771
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->a(Lcom/umeng/message/proguard/aT;)Ljava/lang/String;

    move-result-object v6

    .line 772
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 773
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_connect_log"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aT;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnectLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lcom/umeng/message/proguard/aU;)V
    .locals 8

    .prologue
    .line 808
    if-nez p1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 812
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 813
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->a(Lcom/umeng/message/proguard/aU;)Ljava/lang/String;

    move-result-object v6

    .line 814
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 815
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_dns_log"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aU;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v0

    .line 819
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDNSLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lcom/umeng/message/proguard/aV;)V
    .locals 8

    .prologue
    .line 790
    if-nez p1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 795
    invoke-static {p1}, Lcom/umeng/message/proguard/aD;->a(Lcom/umeng/message/proguard/aV;)Ljava/lang/String;

    move-result-object v6

    .line 796
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 797
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_getServiceMsg_log"

    invoke-virtual {p1}, Lcom/umeng/message/proguard/aV;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetServiceMsgLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final varargs a(Landroid/content/Context;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 565
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 567
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_android_module"

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 165
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 167
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_app_ping"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 339
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 341
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_election_register"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 243
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 245
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_event_message_notify"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 579
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 581
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 582
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_spyd_force_chunked"

    invoke-interface {v1, v2, v3, v0, p1}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 108
    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    invoke-interface {v0, p0}, Lorg/android/agoo/ut/UT;->onCaughException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 118
    :try_start_0
    sget-boolean v0, Lcom/umeng/message/proguard/aD;->O:Z

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/proguard/aD;->O:Z

    .line 122
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    invoke-interface {v0, p0}, Lorg/android/agoo/ut/UT;->stop(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 262
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 264
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 265
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 402
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 404
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_election"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 326
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 328
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_message_decrypted_error"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public static final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    const-string v0, "utdid_error"

    .line 138
    :try_start_0
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 139
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-nez v1, :cond_4

    .line 140
    invoke-static {p0}, Lorg/android/Config;->getLoggerClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v0, "shared_not_found"

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    invoke-static {p0}, Lorg/android/agoo/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {p0}, Lorg/android/agoo/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    :cond_2
    const-string v0, "appkey_or_ttid_null"

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "class_not_found"

    goto :goto_0

    .line 151
    :cond_4
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    invoke-interface {v1, p0}, Lorg/android/agoo/ut/UT;->getUtdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v0, "utdid_null"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 280
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_http_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 606
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 609
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_start_method"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 201
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_ervice_sec_error_start"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 300
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 301
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_parse_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 694
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 696
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_register_log"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v5, v4

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 215
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_service_error_start"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 313
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 315
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_body_null"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 714
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 715
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 716
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_election_log"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v5, v4

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doElectionLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 227
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 229
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 230
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_message_size_large"

    const-string v4, "5"

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 361
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 363
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 364
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_election_error"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final g(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 378
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 379
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 380
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_election_times"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 423
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 425
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 426
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_sysfile_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final h(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 389
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 390
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 391
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_election_no_result"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 444
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_register_error"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 523
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 525
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_register"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 551
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 553
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 554
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    invoke-interface {v1, v2, p1, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final j(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 537
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 539
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v1, :cond_0

    .line 540
    sget-object v1, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v2, 0x1051b9cd

    const-string v3, "agoo_unregister"

    invoke-interface {v1, v2, v3, v0}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 832
    if-nez p1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 837
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 838
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_election_result_log"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnectLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final k(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 592
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 595
    sget-object v2, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v2, :cond_0

    .line 596
    sget-object v2, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v3, 0x1051b9cd

    const-string v4, "agoo_checkpackage_stop"

    invoke-interface {v2, v3, v4, v0, v1}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 855
    if-nez p1, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 860
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 861
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x101d2

    const-string v2, "agoo_event_register_begin_log"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConnectLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final l(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 620
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 621
    const-string v0, "AGOO_CONNECT"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 623
    const-string v1, "AGOO_CONNECT_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 624
    const-string v1, "AGOO_CONNECT_PORT"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 625
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    const-string v1, "agoo_connect_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 628
    new-instance v0, Lcom/umeng/message/proguard/aS;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 629
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v8

    .line 630
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 631
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_pushService_connect_success"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ip="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "&port="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&netType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sdkVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final m(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 642
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 643
    const-string v0, "AGOO_CONNECT"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    const-string v1, "AGOO_CONNECT_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 646
    const-string v1, "AGOO_CONNECT_PORT"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 647
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 649
    const-string v1, "agoo_connect_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 650
    new-instance v0, Lcom/umeng/message/proguard/aS;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v0}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v9

    .line 652
    invoke-static {p0}, Lorg/android/Config;->getPushServiceErrorId(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 653
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 654
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 655
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_pushservice_connect_error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ip="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&port="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&netType="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&sdkVersion="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&errorId="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v6, "errorId"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "&url="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v6, "url"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 660
    :cond_0
    invoke-static {p0}, Lorg/android/Config;->getDnsErrorId(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 661
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 662
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_1

    .line 663
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_pushservice_connect_error"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ip="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sdkVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&dnsErrorId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "dnsErrorId"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&dnsUrl="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v6, "dnsUrl"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-interface/range {v0 .. v5}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :cond_1
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 674
    :try_start_0
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 675
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v1, 0x1051b9cd

    const-string v2, "agoo_somanager_start"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final o(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 728
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 730
    new-instance v1, Lcom/umeng/message/proguard/aS;

    invoke-direct {v1, p0}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 731
    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v2

    .line 732
    sget-object v3, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v3, :cond_0

    .line 733
    sget-object v3, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v4, 0x101d2

    const-string v5, "agoo_event_force_http"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&isWapNetwork="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->a()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v0, v1}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doElectionLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final p(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 744
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-static {p0}, Lcom/umeng/message/proguard/aD;->a(Landroid/content/Context;)V

    .line 746
    new-instance v1, Lcom/umeng/message/proguard/aS;

    invoke-direct {v1, p0}, Lcom/umeng/message/proguard/aS;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->c()Ljava/lang/String;

    move-result-object v2

    .line 748
    sget-object v3, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    if-eqz v3, :cond_0

    .line 749
    sget-object v3, Lcom/umeng/message/proguard/aD;->P:Lorg/android/agoo/ut/UT;

    const v4, 0x101d2

    const-string v5, "agoo_event_force_WifiProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "&isWapNetwork="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/message/proguard/aS;->a()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/android/agoo/a;->a()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v5, v0, v1}, Lorg/android/agoo/ut/UT;->commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 752
    :catch_0
    move-exception v0

    .line 753
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doElectionLog error,exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
