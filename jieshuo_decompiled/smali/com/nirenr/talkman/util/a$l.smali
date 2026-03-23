.class Lcom/nirenr/talkman/util/a$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/a;->z(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/a$l;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/nirenr/talkman/util/a$l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/util/a$l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/util/a$l;->a:Landroid/content/SharedPreferences;

    const-string v0, "last_user_i"

    iget-object v1, p0, Lcom/nirenr/talkman/util/a$l;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/util/a$l;->a:Landroid/content/SharedPreferences;

    const-string v0, "last_user_d"

    iget-object v1, p0, Lcom/nirenr/talkman/util/a$l;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
