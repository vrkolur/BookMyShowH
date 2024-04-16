document.addEventListener('DOMContentLoaded', function () {
    const movieCards = document.querySelectorAll('.movie-card');

    movieCards.forEach(card => {
        card.addEventListener('click', function () {
            const aboutDiv = this.querySelector('.movie-about');
            aboutDiv.style.display = aboutDiv.style.display === 'none' ? 'block' : 'none';
        });
    });
});
