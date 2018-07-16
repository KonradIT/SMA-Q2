.class public final Lcom/smalife/db/Sma$Users;
.super Ljava/lang/Object;
.source "Sma.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/db/Sma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Users"
.end annotation


# static fields
.field public static final Adrress:Ljava/lang/String; = "Adrress"

.field public static final Age:Ljava/lang/String; = "age"

.field public static final Aim_steps:Ljava/lang/String; = "steps_Aim"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/users"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/users"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ClientID:Ljava/lang/String; = "client_id"

.field public static final DEFAULT_ORDER:Ljava/lang/String; = "_id asc"

.field public static final Device_type:Ljava/lang/String; = "device_type"

.field public static final HIGHT:Ljava/lang/String; = "hight"

.field public static final Header_icon_url:Ljava/lang/String; = "header_icon_url"

.field public static final Header_url:Ljava/lang/String; = "header_url"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MacAddress:Ljava/lang/String; = "mac_Address"

.field public static final NICKNAME:Ljava/lang/String; = "nickName"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final USER_TABLE_NAME:Ljava/lang/String; = "users"

.field public static final User_Account:Ljava/lang/String; = "user_account"

.field public static final WEIGHT:Ljava/lang/String; = "weight"

.field public static final createUserTBSQL:Ljava/lang/String; = "create table users(_id INTEGER primary key autoincrement,user_account text not null,client_id text not null,nickName text,hight REAL,weight REAL,sex int default -1,age int default 0,header_url text default NULL,Adrress text,device_type text,steps_Aim int)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://com.sma.app.provider/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smalife/db/Sma$Users;->CONTENT_URI:Landroid/net/Uri;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
