.class public Lz0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lz0/i$a;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lz0/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lz0/i;->b:Lz0/i$a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lz0/i;->b:Lz0/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lz0/i;->b:Lz0/i$a;

    iget-object v2, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lz0/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v1, p0, Lz0/i;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_1
    throw v0

    :cond_2
    :goto_2
    return v1
.end method
