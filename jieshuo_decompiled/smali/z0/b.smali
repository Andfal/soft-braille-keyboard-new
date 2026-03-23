.class public Lz0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "modelFile"

    const-string v1, "id=?"

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "modelFile"

    invoke-static {}, Lz0/b$b;->values()[Lz0/b$b;

    move-result-object v1

    invoke-static {v0, v1}, Lq1/j;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelFileBags;)V
    .locals 2

    new-instance v0, Lz0/i;

    new-instance v1, Lz0/b$a;

    invoke-direct {v1, p1}, Lz0/b$a;-><init>(Lcom/baidu/tts/client/model/ModelFileBags;)V

    invoke-direct {v0, p0, v1}, Lz0/i;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lz0/i$a;)V

    invoke-virtual {v0}, Lz0/i;->a()Z

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "modelFile"

    invoke-static {v0}, Lq1/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
