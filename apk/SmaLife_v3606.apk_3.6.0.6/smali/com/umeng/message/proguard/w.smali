.class public Lcom/umeng/message/proguard/w;
.super Ljava/lang/Object;
.source "UTMCStatConfig.java"


# static fields
.field private static a:Lcom/umeng/message/proguard/w;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/app/Application;

.field private k:Ljava/lang/String;

.field private l:Lcom/umeng/message/proguard/aa;

.field private m:Z

.field private n:Lcom/umeng/message/proguard/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/umeng/message/proguard/w;

    invoke-direct {v0}, Lcom/umeng/message/proguard/w;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/w;->a:Lcom/umeng/message/proguard/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->c:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->d:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->e:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->f:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->g:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->h:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/umeng/message/proguard/w;->i:Z

    .line 48
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->j:Landroid/app/Application;

    .line 49
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->k:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->l:Lcom/umeng/message/proguard/aa;

    .line 51
    iput-boolean v1, p0, Lcom/umeng/message/proguard/w;->m:Z

    .line 52
    iput-object v0, p0, Lcom/umeng/message/proguard/w;->n:Lcom/umeng/message/proguard/s;

    .line 33
    return-void
.end method

.method public static a()Lcom/umeng/message/proguard/w;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/umeng/message/proguard/w;->a:Lcom/umeng/message/proguard/w;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 119
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->e:Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->f:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    const-string v1, "UTMCBase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    const-string v1, "_lun"

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/ai;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 145
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->g:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->h:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    const-string v1, "UTMCBase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    const-string v1, "_luid"

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/ai;->c([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/umeng/message/proguard/L;->a()Lcom/umeng/message/proguard/L;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/L;->a(Ljava/util/Map;)V

    .line 215
    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/umeng/message/proguard/w;->m:Z

    if-nez v0, :cond_0

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 245
    :try_start_0
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->m()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->m()Landroid/app/Application;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/umeng/message/proguard/C;->a(Landroid/app/Application;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/w;->m:Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Lcom/umeng/message/proguard/w;->a()Lcom/umeng/message/proguard/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/proguard/w;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/umeng/message/proguard/C;->a(Landroid/app/Application;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/w;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const-string v0, "UTEngine"

    const-string v1, "You need set a application instance for UT."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->j:Landroid/app/Application;

    .line 232
    invoke-direct {p0}, Lcom/umeng/message/proguard/w;->o()V

    .line 233
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 175
    if-eqz p1, :cond_1

    .line 176
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    const-string v1, "UTMCBase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 179
    const-string v0, "_lun"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/ai;->a([BI)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 185
    iput-object v2, p0, Lcom/umeng/message/proguard/w;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    const-string v0, "_luid"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/umeng/message/proguard/at;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/ai;->a([BI)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 196
    iput-object v1, p0, Lcom/umeng/message/proguard/w;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/umeng/message/proguard/w;->o()V

    .line 203
    invoke-direct {p0}, Lcom/umeng/message/proguard/w;->n()V

    .line 204
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/umeng/message/proguard/aa;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->l:Lcom/umeng/message/proguard/aa;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/umeng/message/proguard/aa;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/w;->c:Ljava/lang/String;

    .line 92
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->k:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/w;->c(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p2}, Lcom/umeng/message/proguard/w;->d(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/umeng/message/proguard/w;->d:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public c()Lcom/umeng/message/proguard/s;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->n:Lcom/umeng/message/proguard/s;

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    const-string v0, "com.umeng.message.proguard.av"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/umeng/message/proguard/s;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/umeng/message/proguard/s;

    iput-object v0, p0, Lcom/umeng/message/proguard/w;->n:Lcom/umeng/message/proguard/s;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->n:Lcom/umeng/message/proguard/s;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "UTMini miss file com.ut.mini.info.UTMCBuildInfo."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->n:Lcom/umeng/message/proguard/s;

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 76
    :catch_2
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public d()Lcom/umeng/message/proguard/aa;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->l:Lcom/umeng/message/proguard/aa;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/message/proguard/y;->b(Z)V

    .line 100
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->b:Landroid/content/Context;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Landroid/app/Application;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/umeng/message/proguard/w;->j:Landroid/app/Application;

    return-object v0
.end method
