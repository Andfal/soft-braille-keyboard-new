.class Lj2/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/b$a;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/b$a;


# direct methods
.method constructor <init>(Lj2/b$a;)V
    .locals 0

    iput-object p1, p0, Lj2/b$a$a;->a:Lj2/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lj2/b$a$a;->a:Lj2/b$a;

    iget-object v0, v0, Lj2/b$a;->a:Lj2/b;

    invoke-static {v0}, Lj2/b;->c(Lj2/b;)V

    return-void
.end method
