.class public final Lg3/f$k;
.super Lc3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg3/f;->v0(ILg3/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lg3/f;

.field final synthetic h:I

.field final synthetic i:Lg3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg3/f;ILg3/b;)V
    .locals 0

    iput-object p1, p0, Lg3/f$k;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lg3/f$k;->f:Z

    iput-object p5, p0, Lg3/f$k;->g:Lg3/f;

    iput p6, p0, Lg3/f$k;->h:I

    iput-object p7, p0, Lg3/f$k;->i:Lg3/b;

    invoke-direct {p0, p3, p4}, Lc3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg3/f$k;->g:Lg3/f;

    iget v1, p0, Lg3/f$k;->h:I

    iget-object v2, p0, Lg3/f$k;->i:Lg3/b;

    invoke-virtual {v0, v1, v2}, Lg3/f;->u0(ILg3/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg3/f$k;->g:Lg3/f;

    invoke-static {v1, v0}, Lg3/f;->b(Lg3/f;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
