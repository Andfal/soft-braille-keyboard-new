.class Lc4/a$a$a;
.super Lc4/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc4/a$a;->a(Ljava/lang/String;)Lc4/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc4/a$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lc4/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc4/a$a$a;->a:Ljava/lang/String;

    return-object v0
.end method
